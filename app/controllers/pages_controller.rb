class PagesController < ApplicationController

  skip_before_action :authenticate_user!

  def home
  end

  def bookings
    @bookings = Booking.where(owner_id: current_user.id)
  end
end
