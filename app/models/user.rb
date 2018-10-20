class User < ApplicationRecord
  has_many :family_members
  has_many :supplies
  has_many :events

  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
