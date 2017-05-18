class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tickets, foreign_key: "user_id", dependent: :destroy
  has_many :ordered_trips, through: :tickets, source: :trip_id


  def buy!(trip)
  	tickets.create!(trip_id: trip.id)
  end
end
