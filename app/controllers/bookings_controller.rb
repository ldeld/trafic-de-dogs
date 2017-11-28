class BookingsController < ApplicationController
  # before_action :find_user, except: [:create]

  def index
    @bookings = @user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(sitter_id: params[:sitter_id], owner_id: current_user.id, start_time: Date.parse("30-12-2017"), end_time: Date.parse("31-12-2017") )
    if @booking.save
      redirect_to root_path
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
