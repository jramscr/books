class Book < ApplicationRecord
  WITHOUT_COVER = 'https://islandpress.org/sites/default/files/400px%20x%20600px-r01BookNotPictured.jpg'

  has_many :book_authors
  has_many :authors, through: :book_authors
  belongs_to :publisher_house, optional: true

  validates :title, presence: true, uniqueness: true
  validates :pages, presence: true

  accepts_nested_attributes_for :book_authors, reject_if: :all_blank, allow_destroy: true
end
