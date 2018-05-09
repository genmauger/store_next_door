class FacilitySpace < ApplicationRecord

  belongs_to :storage_facility

  include ImageUploader::Attachment.new(:image)

  def price_in_dollars
    rate.to_f
  end

end
