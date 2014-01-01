class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to new_car_path, notice: 'Car was successfully created!'
    else
      render 'new'
    end
  end

  private
  def car_params
    params.require(:car).permit(:color, :year, :mileage)
  end
end
