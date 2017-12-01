class BookingsController < ApplicationController
  before_action :find_booking, only: [:accept, :reject]

  def index
    @bookings = Booking.where(owner_id: current_user.id).sort {|booking| booking.date}.reverse!
  end

  def index_as_sitter
    @bookings = Booking.where(sitter_id: current_user.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    params[:booking][:dog_ids].each do |dog_id|
      BookDog.create!(booking: @booking, dog_id: dog_id) if dog_id.present?
    end
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def accept
    @booking.status = "accepted"
    @booking.save
    redirect_to bookings_as_sitter_path
  end

  def reject
    @booking.status = "rejected"
    @booking.save
    redirect_to bookings_as_sitter_path
  end

  private

  def booking_params
  params
    .require(:booking)
    .permit(:date)
    .merge(sitter_id: params[:sitter_id], owner_id: current_user.id)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
