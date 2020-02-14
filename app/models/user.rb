class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # USER_TYPE_OPTIONS = ["advisor", "user"]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments
  has_many :services
  has_many :advisor_appointments, through: :services, source: :appointments
  # validates_inclusion_of :user_type, in: USER_TYPE_OPTIONS

end
