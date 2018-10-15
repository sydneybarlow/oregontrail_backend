class FamilyMembersController < ApplicationController
  def index
    render json: FamilyMember.all
  end

  def show
    render json: FamilyMember.find(params[:id])
  end

  def create
    render json: FamilyMember.create(family_member_param)
  end

  def family_member_param
    params.require(:family_members).permit(:name, :health, :status)
  end

  def update
    render json: FamilyMember.find_by_id(params[:id]).update(family_member_param)
  end

  def destroy
    render json: FamilyMember.find(params[:id]).destroy()
  end
end
