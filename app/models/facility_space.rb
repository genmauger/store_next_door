class FacilitySpace < ApplicationRecord

  belongs_to :storage_facility

  include ImageUploader::Attachment.new(:image)

end
