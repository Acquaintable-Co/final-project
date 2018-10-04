class Profile < ApplicationRecord
  has_secure_password
  has_many :offers
  has_many :highlights
  has_many :locations
  has_many :hacks
  has_one_attached :menu
  has_one_attached :vr_image
  has_one_attached :floor_plan
end
