class FamilyMembersController < ApplicationController
  def index
    render json: FamilyMember.all
  end

  def show
    render json: FamilyMember.find(params[:id])
  end

  def create
    render json: family_member_param.map {|family| FamilyMember.create!(name: family[:name], user_id: family[:user_id])}
  end

  def family_member_param
    params[:family_member].map {|x| x.permit(:name, :user_id).to_h}
  end

  def update
    render json: FamilyMember.find_by_id(params[:id]).update(family_member_param)
  end

  def destroy
    render json: FamilyMember.find(params[:id]).destroy()
  end
end
