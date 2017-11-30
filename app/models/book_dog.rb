class BookDog < ApplicationRecord
  belongs_to :dog
  belongs_to :booking
end
