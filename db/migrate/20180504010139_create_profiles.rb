class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :first_name
      t.text :last_name
      t.text :mobile
      t.text :street_address
      t.text :suburb
      t.text :postcode
      t.text :country
      t.text :mobile
      t.text :image_data
      t.decimal :latitude
      t.decimal :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
