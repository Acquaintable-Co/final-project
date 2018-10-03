class Profile < ApplicationRecord
  has_secure_password
  has_many :offers
  has_many :highlights
  has_many :locations
  has_many :hacks
end
