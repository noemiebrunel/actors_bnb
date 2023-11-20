class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :type
      t.references :users, null: false, foreign_key: true
      t.references :actors, null: false, foreign_key: true

      t.timestamps
    end
  end
end
