class Availability < ApplicationRecord
  belongs_to :sitter
  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :end_date_after_start_date?

  def end_date_after_start_date?
    if end_date <= start_date
      errors.add :end_date, "Cannot be before start date"
    end
  end
end
