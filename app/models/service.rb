class Service < ApplicationRecord
  PROPERTY_OPTIONS = ['General Consultation', 'Test Prep', 'Ongoing Assistance']
  validates :service_type, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates_inclusion_of :service_type, in: PROPERTY_OPTIONS
  belongs_to :user
  has_many :appointments, dependent: :destroy
end
