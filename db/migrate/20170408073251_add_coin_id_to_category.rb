class AddCoinIdToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :coin_id, :integer
    add_index :categories, :coin_id
  end
end
