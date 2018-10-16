class User < ApplicationRecord
  has_one :spec
  has_many :family_members, through: :specs
  has_many :supplies, through: :specs

  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
