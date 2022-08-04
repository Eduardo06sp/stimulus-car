class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      puts 'SAVE WAS A SUCCESS'
    else
      puts 'FAILURE TO SAVE YOUR CAR'
    end
  end

  def edit
  end

  private

  def car_params
    params.require(:car).permit(:year, :make, :model, trims_attributes:
                                %i[name body_kit forced_induction wheels transmission sound_system])
  end
end
