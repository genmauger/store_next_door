class Profile < ApplicationRecord
  attr_accessor :street_address, :latitude, :longitude
  belongs_to :user
  has_many :photos
  # has_attached_file :image
  geocoded_by :street_address
  after_validation :geocode
end
