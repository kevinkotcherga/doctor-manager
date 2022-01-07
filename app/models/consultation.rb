class Consultation < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :name, presence: true
end
