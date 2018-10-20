class EventsController < ApplicationController
  def index
    render json: Event.all
  end

  def show
    render json: Event.find(params[:id])
  end

  def create
    render json: Event.create(event_param)
  end

  def event_param
    params.require(:event).permit(:name)
  end

  def update
    render json: Event.find_by_id(params[:id]).update(event_param)
  end

  def destroy
    render json: Event.find(params[:id]).destroy()
  end
end
