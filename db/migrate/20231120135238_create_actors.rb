class CreateActors < ActiveRecord::Migration[7.1]
  def change
    create_table :actors do |t|
      t.integer :price
      t.string :mail
      t.text :description
      t.string :username
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
