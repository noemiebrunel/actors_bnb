class ChangeReferences < ActiveRecord::Migration[7.1]
  def change
    rename_column :actors, :users_id, :user_id
    rename_column :bookings, :users_id, :user_id
    rename_column :bookings, :actors_id, :actor_id


  end
end
