class BookingsController < ApplicationController
  # before_action :find_user, except: [:create]

  def index
    @bookings = Booking.where(owner_id: current_user.id).sort {|booking| booking.date}.reverse!
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    params[:booking][:dog_ids].each do |dog_id|
      BookDog.create!(booking: @booking, dog_id: dog_id) if dog_id.present?
    end
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
    params
      .require(:booking)
      .permit(:date)
      .merge(sitter_id: params[:sitter_id], owner_id: current_user.id)
  end
end
