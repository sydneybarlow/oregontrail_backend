class SuppliesController < ApplicationController
  def index
    render json: Supply.all
  end

  def show
    render json: Supply.find(params[:id])
  end

  def create
    supply_param.map {|supply| Supply.create(name: supply[:name], amount: supply[:amount])}
  end

  def supply_param
    params[:supply].map {|x| x.permit(:name, :amount).to_h}
  end

  def update
    render json: Supply.find_by_id(params[:id]).update(supply_param)
  end

  def destroy
    render json: Supply.find(params[:id]).destroy()
  end
end
