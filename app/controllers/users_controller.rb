# show, edit , update, destroy
class UsersController < ApplicationController

  before_action :find_user, only: [:show]

  def index
    @users = User.all
  end

  def show
  end

  def profile
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
