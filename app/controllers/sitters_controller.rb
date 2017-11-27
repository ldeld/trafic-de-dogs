class SittersController < ApplicationController
  before_action :find_sitter, only: [:show]
  def index
    @sitters = User.where(sitter: true)
  end

  def show
  end

  private

  def find_sitter
    @sitter = User.find(params[:id])
  end
end
