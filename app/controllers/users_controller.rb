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

  def become_sitter
    current_user.becomes! Sitter
    current_user.save
    redirect_to profile_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
