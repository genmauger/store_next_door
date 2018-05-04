json.extract! profile, :id, :first_name, :last_name, :mobile, :street_address, :suburb, :postcode, :country, :mobile, :image_data, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
