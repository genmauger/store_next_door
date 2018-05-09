class Profile < ApplicationRecord
  belongs_to :user

  validates :street_address, presence: true

  include ImageUploader::Attachment.new(:image)
  # has_attached_file :image
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def address
    [street_address, suburb, postcode, country].compact.join(', ')
  end


end