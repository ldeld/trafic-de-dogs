class Booking < ApplicationRecord
  belongs_to :owner, :class_name => "User"
  belongs_to :sitter, :class_name => "User"
end
