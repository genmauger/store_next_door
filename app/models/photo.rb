class Photo < Sequel::Model # ActiveRecord::Base
  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
end