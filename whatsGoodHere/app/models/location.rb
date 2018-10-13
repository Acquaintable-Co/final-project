class Location < ApplicationRecord
  belongs_to :profile
  validates :location_detail, presence: true
end
