
# TODO :
# index, show, new, create, edit update, destroy

class PagesController < ApplicationController

  before_action :set_user, only: [:index, :new, :create, :destroy]
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = @user.dogs.all
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = @user.dogs.new(dog_params)
    if @dog.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dog.update_attributes(dog_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog.destroy
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:description, :ingredient_id)
  end

end
