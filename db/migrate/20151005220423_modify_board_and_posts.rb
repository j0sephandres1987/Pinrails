class ModifyBoardAndPosts < ActiveRecord::Migration
  def change
    drop_table :boards
    add_column :posts, "user_id", :integer
    add_index :posts, :user_id
  end
end
