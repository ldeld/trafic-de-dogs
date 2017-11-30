class AvailabilitiesController < ApplicationController

  before_action :set_user, only: [:index, :destroy]
  before_action :set_availability, only: [:show, :destroy]

  def index
    @availabilities = @user.availabilities.all
  end

  def new
    @availability = Availability.new
  end

  def create
    @availability = current_user.availabilities.new(availability_params)
    if @availability.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def destroy
    @availability.destroy
    redirect_to profile_path
  end

  def set_user
    @user = current_user
  end

  def set_availability
    @availability = Availability.find(params[:id])
  end

  def availability_params
    params.require(:availability).permit(:start_date, :end_date)
  end
end
