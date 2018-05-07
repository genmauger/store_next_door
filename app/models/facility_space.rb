class FacilitySpace < ApplicationRecord

  belongs_to :storage_facility

  include ImageUploader::Attachment.new(:image)
  # has_attached_file :image

end
