class Spec < ApplicationRecord
  belongs_to :user
  belongs_to :family_member
  belongs_to :supply
end
