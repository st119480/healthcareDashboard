class Doctor < ApplicationRecord
  belongs_to :user
  has_many :specialty
  validates :license_number, :presence => true
end
