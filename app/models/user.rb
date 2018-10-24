class User < ApplicationRecord
  has_many :family_members
  has_many :supplies

  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  def create_events
    eventsArray = ["dysentery", "broken_arm", "indians", "dinosaurs", "anthrax", "flight", "small_pox", "zombies", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none"]
    eventsArray.each do |event|
      Event.create(name: event)
      puts event
    end
  end
end
