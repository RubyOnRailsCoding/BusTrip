class Ticket < ApplicationRecord
	belongs_to :user, class_name: "User"
	validates :user_id, presence: true
  validates :trip_id, presence: true
end
