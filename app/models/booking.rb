class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :storage_facility
  belongs_to :facility_spaces
end
