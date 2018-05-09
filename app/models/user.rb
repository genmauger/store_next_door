class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :storage_facility


  def profile_and_image?
    if profile.present?
      profile.image_data.present?
    else
      false
    end
  end

  
end
