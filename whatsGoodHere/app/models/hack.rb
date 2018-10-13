class Hack < ApplicationRecord
  belongs_to :profile
  validates :hack_detail, presence: true
end
