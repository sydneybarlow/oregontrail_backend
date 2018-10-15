class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :family_member_id, :supply_id

end
