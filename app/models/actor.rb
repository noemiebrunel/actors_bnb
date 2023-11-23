class Actor < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  has_and_belongs_to_many :categories
end
