class Book < ApplicationRecord
   validates :title, :author, :price, :published_date, presence: true
   has_many :books
end
