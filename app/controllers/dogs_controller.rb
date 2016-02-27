class DogsController < ApplicationController


  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(user_params)
    if @dog.save
      redirect_to @dog
    else 
      render 'new'
    end
  end

  private
  def user_params
    params.require(:dog).permit(:name, :age)
  end
end
