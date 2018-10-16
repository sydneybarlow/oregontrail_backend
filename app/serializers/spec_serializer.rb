class SpecSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :family_member_id, :supply_id
end
