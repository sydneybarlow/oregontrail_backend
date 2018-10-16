class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password
  belongs_to :family_members
  belongs_to :supplies
end
