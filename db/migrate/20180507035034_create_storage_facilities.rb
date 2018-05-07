class CreateStorageFacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_facilities do |t|
      t.text :street_address
      t.text :suburb
      t.text :postcode
      t.text :state
      t.text :country
      t.timestamp :unlisted_at
      t.decimal :longitude
      t.decimal :latitude
      t.text :image_data
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
