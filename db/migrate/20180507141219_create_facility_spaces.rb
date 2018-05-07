class CreateFacilitySpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :facility_spaces do |t|
      t.text :height
      t.text :width
      t.text :length
      t.decimal :rate
      t.text :image_data
      t.references :storage_facility, foreign_key: true

      t.timestamps
    end
  end
end
