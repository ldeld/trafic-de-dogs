class BookingsController < ApplicationController
  # before_action :find_user, except: [:create]

  def index
    @bookings = Booking.where(owner_id: current_user.id) #.sort {|booking| booking.start_date}.reverse!
  end

  def new
    @booking = Booking.new
  end

  def create
    # p params
    # binding.pry
    @booking = Booking.new(sitter_id: params[:sitter_id], owner_id: current_user.id, start_date: Date.strptime("12/06/2018", "%d/%m/%Y"), end_date: Date.strptime("13/06/2018", "%d/%m/%Y"))
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


end
