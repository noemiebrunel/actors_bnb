class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :actor
  STATUSES = %i[pending accepted refused].map(&:to_s).freeze
end
