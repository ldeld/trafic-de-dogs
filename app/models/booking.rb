class Booking < ApplicationRecord
  belongs_to :owner, :class_name => "User"
  belongs_to :sitter, :class_name => "User"

  validates :owner_id, presence: true
  validates :sitter_id, presence: true
end
