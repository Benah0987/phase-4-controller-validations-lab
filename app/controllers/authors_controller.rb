class AuthorsController < ApplicationController
  
  def show
    author = Author.find(params[:id])

    render json: author
  end

  def create
  #  using params 
    author = Author.create(author_params)
    if authhor.save
      render json: author, status: :created
    else  
      render json: { errors: author.errors.full_messages }, status: :unprocessable_entity
    end

    
  end

  private
  # 
  def author_params
    params.require(:author).permit(:name, :email)
  end
  
end
