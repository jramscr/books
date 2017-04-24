class AddPublisherHouseReferenceToBook < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :publisher_house, index: true
  end
end
