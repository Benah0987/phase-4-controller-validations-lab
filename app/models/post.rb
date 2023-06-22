class Post < ApplicationRecord
    validates :title, presence :true
    validates :category, inclusion {in: %w(fiction Non-Fiction)}
    validates :content, length: {minimum: 100}
end
