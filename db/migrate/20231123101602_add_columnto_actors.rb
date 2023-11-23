class AddColumntoActors < ActiveRecord::Migration[7.1]
  def change
    add_column :actors, :category, :string
  end
end
