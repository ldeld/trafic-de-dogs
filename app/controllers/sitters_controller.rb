class SittersController < ApplicationController
  before_action :find_sitter, only: [:show, :update]
  def index
    @sitters = Sitter.near(params[:city], 10)
                     .joins(:availabilities)
                     .where("availabilities.start_date < ? AND availabilities.end_date > ?", params[:date].to_date, params[:date].to_date)
    # @sitters.reject! {  }
    # @sitters.select { |s| (s.availabilities.collect(&:start_date)[0] <= params[:date]) && (sitter.availabilities.collect(&:end_date)[0] >= params[:date]) }
    # @sitters = Sitter.where(['availabilities.collect(&:start_date) < ? AND availabilities.collect(&:end_date) > ?', date, date]).near(params[:city], 10)
    # @sitters = near_sitters.select { |sitter| (sitter.availabilities.start_date <= params[:date]) && (sitter.availabilities.end_date >= params[:date]) }
    @markers = Gmaps4rails.build_markers(@sitters) do |sitter, marker|
      marker.lat sitter.latitude
      marker.lng sitter.longitude
      marker.infowindow render_to_string(partial: "/sitters/map_box", locals: { sitter: sitter })
    end
  end

  def update
    @sitter.update(sitter_params)
    redirect_to profile_path(@sitter)
  end


  def show
    @booking = Booking.new(owner: current_user, sitter: @sitter)
    # @bookdog = BookDog.new(booking: @booking)
  end

  private

  def find_sitter
    @sitter = Sitter.find(params[:id])
  end

  def sitter_params
    params.require(:sitter).permit(:photo_card, :photo_card_cache)
  end

end
