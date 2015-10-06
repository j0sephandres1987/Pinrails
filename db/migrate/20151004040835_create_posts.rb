class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string "title", :limit => 50
      t.integer "board_id", :default => 0
      
      t.timestamps
    end
    add_index :posts, :board_id
  end
end
