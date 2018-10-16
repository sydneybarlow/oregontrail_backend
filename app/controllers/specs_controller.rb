class SpecsController < ApplicationController
  def index
    render json: Spec.all
  end

  def show
    render json: Spec.find(params[:id])
  end

  def create
    render json: Spec.create(spec_params)
  end

  def spec_params
    params.require(:spec).permit(:user_id, :family_member_id, :supply_id)
  end

  def update
    render json: Spec.find_by_id(params[:id]).update(spec_params)
  end

  def destroy
    render json: Spec.find(params[:id]).destroy()
  end
end
