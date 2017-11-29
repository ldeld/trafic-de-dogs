class SittersController < ApplicationController
  before_action :find_sitter, only: [:show]
  def index
    @sitters = Sitter.all
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
