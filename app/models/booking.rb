class Booking < ApplicationRecord
  belongs_to :owner, :class_name => "User"
  belongs_to :sitter, :class_name => "User"
  has_many :book_dogs
  has_many :dogs, through: :book_dogs

  validates :owner_id, presence: true
  validates :sitter_id, presence: true
end
