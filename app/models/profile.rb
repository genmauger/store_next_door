class Profile < ApplicationRecord
  belongs_to :user
  # has_attached_file :image
end
