# show, edit , update, destroy
class UsersController < ApplicationController
  before_action :find_user, only: [:show]
  def index
    @users = User.all
  end

  def show
    @dogs = @user.dogs.all
  end

  private

  def find_user
    @user = User.find(params[:id])
    @dogs = @user.dogs.all
  end
end
