class FamilyMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :health, :status, :role
end
