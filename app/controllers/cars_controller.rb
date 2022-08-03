class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def edit
  end
end
