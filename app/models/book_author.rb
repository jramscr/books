class BookAuthor < ApplicationRecord
  belongs_to :book, optional: true
  belongs_to :author
end
