class Photo < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
end

#The issue is that I am calling a method from a class that is not being accessed in the form
# Form made with profile
# Form calls on method inherited through Photo class
# How to do this?