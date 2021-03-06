class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.create_events
      payload = { user_id: @user.id }
      token = encode(payload)
      render json: { user: UserSerializer.new(@user), token: token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def user_params
    params.permit(:name, :username, :password, :money, :miles, :days)
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
    render json: @user
  end

  def destroy
    render json: User.find(params[:id]).destroy()
  end

  def login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      payload = { user_id: @user.id }
      token = encode(payload)
      render json: { success: true, token: token, user_info: {
          id: @user.id,
          name: @user.name,
          username: @user.username,
          money: @user.money,
          days: @user.days,
          miles: @user.miles,
          family_members: [],
          supplies: []
        },
      }, status: :ok
    else
      render json: { error: true, success: false, failed: true }
    end
  end

  def homepage
    authorization = request.headers['Authorization']
    token = authorization.split(' ')[1]
    payload = decode(token)
    user = User.find(payload['user_id'])
    render json: { user: UserSerializer.new(user) }, status: :accepted
  end

end
