class Doctor < ApplicationRecord
  has_many :consultations
  has_many :patients, through: :consultations

  validates :first_name, uniqueness: { scope: :last_name }
end
