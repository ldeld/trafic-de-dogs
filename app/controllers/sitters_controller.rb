class SittersController < ApplicationController
  before_action :find_sitter, only: [:show]
  def index
    @sitters = Sitter.all
  end

  def show
  end

  private

  def find_sitter
    @sitter = Sitter.find(params[:id])
  end
end
