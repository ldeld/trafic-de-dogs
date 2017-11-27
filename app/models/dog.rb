class Dog < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :age, presence: true
  validates :vaccins, presence: true
end
