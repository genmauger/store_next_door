json.extract! storage_facility, :id, :street_address, :suburb, :postcode, :state, :country, :unlisted_at, :longitude, :latitude, :image_data, :user_id, :created_at, :updated_at
json.url storage_facility_url(storage_facility, format: :json)
