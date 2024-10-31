class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@gmail\.com\z/, message: "Che, y el gmail???" }
end
