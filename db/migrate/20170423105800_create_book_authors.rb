class CreateBookAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :book_authors do |t|
      t.references :book, index: true
      t.references :author, index: true

      t.timestamps
    end
  end
end
