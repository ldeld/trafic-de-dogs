class User < ApplicationRecord
  has_many :dogs
  has_many :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
