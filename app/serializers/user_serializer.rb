class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password
  has_many :family_members
  has_many :supplies
end
