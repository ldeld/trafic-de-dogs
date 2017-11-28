class BookingsController < ApplicationController
  before_action :find_user

  def index
    @bookings = @user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = @user.bookings.new(booking_params)
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:owner_id, :sitter_id)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
