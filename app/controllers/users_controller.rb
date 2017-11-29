# show, edit , update, destroy
class UsersController < ApplicationController

  before_action :find_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @dogs = @user.dogs.all
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)
    redirect_to user_path(@user)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
  params.require(:user).permit(:first_name, :last_name, :city, :accomodation, :description, :photo, :photo_cache)
  end


end
