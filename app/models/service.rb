class Service < ApplicationRecord
  PROPERTY_OPTIONS = ['General Consultation', 'Test Prep', 'Ongoing Assistance']

  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :service_type, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates_inclusion_of :service_type, in: PROPERTY_OPTIONS
end
