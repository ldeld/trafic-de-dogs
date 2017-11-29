class SittersController < ApplicationController
  before_action :find_sitter, only: [:show]
  def index
    @sitters = Sitter.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@sitters) do |sitter, marker|
      marker.lat sitter.latitude
      marker.lng sitter.longitude
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def find_sitter
    @sitter = Sitter.find(params[:id])
  end

  def current_user
  end
end
