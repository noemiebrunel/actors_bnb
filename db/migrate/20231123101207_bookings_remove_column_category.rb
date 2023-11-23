class BookingsRemoveColumnCategory < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :category
  end
end
