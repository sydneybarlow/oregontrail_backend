class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :money, :miles
  has_many :family_members
  has_many :supplies
  has_many :events
end
