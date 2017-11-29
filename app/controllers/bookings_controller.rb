class BookingsController < ApplicationController
  # before_action :find_user, except: [:create]

  def index
    @bookings = Booking.where(owner_id: current_user.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(sitter_id: params[:sitter_id], owner_id: current_user.id, start_date: Date.parse("2017-12-30"), end_date: Date.parse("2017-12-31") )
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:sitter_id)
  end

  # def find_user
  #   @user = User.find(params[:id])
  # end
end
