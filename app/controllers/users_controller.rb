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
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      payload = { user_id: @user.id }
      token = encode(payload)
      render json: { success: true, token: token }, status: :ok
    else
      render json: { error: true, success: false, failed: true }
    end
  end

end
