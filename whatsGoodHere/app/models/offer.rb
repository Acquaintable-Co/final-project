class Offer < ApplicationRecord
  belongs_to :profile
  validates :offer_detail, presence: true
end
