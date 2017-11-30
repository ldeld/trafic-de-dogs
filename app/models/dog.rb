class Dog < ApplicationRecord
  belongs_to :user
  has_many :book_dogs
  has_many :bookings, through: :book_dogs
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
  validates :vaccines, presence: true
  validates :description, presence: true

  mount_uploader :photo, PhotoUploader
end
