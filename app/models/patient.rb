class Patient < ApplicationRecord
  belongs_to :user
  has_many :blood_types
end
