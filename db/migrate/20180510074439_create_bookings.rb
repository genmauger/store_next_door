class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :date_from
      t.date :date_to
      t.references :user, foreign_key: true
      t.references :storage_facility, foreign_key: true
      t.references :facility_spaces, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
