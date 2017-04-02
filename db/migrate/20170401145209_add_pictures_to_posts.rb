class AddPicturesToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :pictures, :string, array: true, default: []
  end
end
