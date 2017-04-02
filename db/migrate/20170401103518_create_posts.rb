class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :category, index: true, foreign_key: true
      t.string :denomination
      t.string :date
      t.string :metal
      t.string :mint
      t.text :details

      t.timestamps null: false
    end
  end
end
