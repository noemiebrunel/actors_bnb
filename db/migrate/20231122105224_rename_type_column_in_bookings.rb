class RenameTypeColumnInBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :type, :category
  end
end
