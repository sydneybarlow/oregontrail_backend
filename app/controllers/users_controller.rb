class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    render json: User.create(user_param)
  end

  def user_param
    params.require(:user).permit(:username, :password_digest)
  end

  def update
    render json: User.find_by_id(params[:id]).update(user_param)
  end

  def destroy
    render json: User.find(params[:id]).destroy()
  end

  def check
    
  end

end
