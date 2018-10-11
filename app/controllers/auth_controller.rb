class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      payload = { user_id: @user.id }
      token = encode(payload)
      render json: { success: true, token: token }, status: :ok
    else
      redirect json: { error: true, success: false, failed: true }
    end
  end
end
