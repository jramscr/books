class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title, null: false, limit: 150
      t.integer :pages
      t.string :cover
      t.date :published_at

      t.timestamps
    end
  end
end
