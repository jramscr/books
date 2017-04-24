class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, through: :book_authors

  def fullname
    "#{self.last_name[0]}. #{self.first_name}"
  end
end
