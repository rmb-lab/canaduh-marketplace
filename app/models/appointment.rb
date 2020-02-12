class Appointment < ApplicationRecord
  APPOINTMENT_OPTIONS = ["pending confirmation", "confirmed", "cancelled"]

  belongs_to :service
  belongs_to :user

  validates :date, presence: true
  validates :status, presence: true
  validates_inclusion_of :status, in: APPOINTMENT_OPTIONS
end
