class Profile < ApplicationRecord
  belongs_to :user
  # has_many :photos
  validates :street_address, presence: true

  include ImageUploader::Attachment.new(:image)
  # has_attached_file :image
  # geocoded_by :street_address
  # after_validation :geocode
end
