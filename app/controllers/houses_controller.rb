class HousesController < ApplicationController
  def index
    @house = House.all
  end

  def new
    @house = House.new
  end

  def update
    @house = House.find(params[:id])
    @house.update_attribute(:name, params[:name])
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to houses_path
    else
      render :new
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy!
    redirect_to houses_path
  end

private
  def house_params
    params.require(:house).permit(:name)
  end
end
