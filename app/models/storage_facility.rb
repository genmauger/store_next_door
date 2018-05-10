class StorageFacility < ApplicationRecord
  belongs_to :user
  has_many :facility_spaces

  validates :street_address, presence: true

  include ImageUploader::Attachment.new(:image)
  # has_attached_file :image
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def address
    [street_address, suburb, postcode, state, country].compact.join(', ')
  end

  def self.search(search)
    where("suburb LIKE ? OR postcode LIKE ? OR state LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

end

