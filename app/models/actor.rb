class Actor < ApplicationRecord
  belongs_to :users
  has_many :booking
end
