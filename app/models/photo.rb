class Photo < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute

end