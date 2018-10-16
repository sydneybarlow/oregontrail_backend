class FamilyMember < ApplicationRecord
  has_one :spec
  has_one :user, through: :specs
end
