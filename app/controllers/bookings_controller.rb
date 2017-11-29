class BookingsController < ApplicationController
  # before_action :find_user, except: [:create]

  def index
    @bookings = Booking.where(owner_id: current_user.id).sort {|booking| booking.start_date}.reverse!
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(sitter_id: params[:sitter_id], owner_id: current_user.id, start_date: Date.strptime("12/06/2018", "%d/%m/%Y"), end_date: Date.strptime("13/06/2018", "%d/%m/%Y"))
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
