class CreatePublisherHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :publisher_houses do |t|
      t.string :name, null: false, limit: 150, unique: true

      t.timestamps
    end
  end
end
