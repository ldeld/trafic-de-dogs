class PagesController < ApplicationController
  def home
  end

  def bookings
    @bookings = Booking.where(owner_id: current_user.id)
  end
end
