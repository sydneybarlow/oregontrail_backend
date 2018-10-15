class SuppliesController < ApplicationController
  def index
    render json: Supply.all
  end

  def show
    render json: Supply.find(params[:id])
  end

  def create
    render json: Supply.create(supply_param)
  end

  def supply_param
    params.require(:supply).permit(:money, :poundsOfFood, :boxesOfAmmo)
  end

  def update
    render json: Supply.find_by_id(params[:id]).update(supply_param)
  end

  def destroy
    render json: Supply.find(params[:id]).destroy()
  end
end
