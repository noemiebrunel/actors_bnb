class CreateJoinTableActorCategory < ActiveRecord::Migration[7.1]
  def change
    create_join_table :actors, :categories do |t|
      # t.index [:actor_id, :category_id]
      # t.index [:category_id, :actor_id]
    end
  end
end
