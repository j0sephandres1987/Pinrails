class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string "name"
      t.integer "user_id"
      t.text "description"
      t.integer "category_id"
      t.boolean "public", :default => true
      
      t.timestamps
    end
    add_index :boards, :category_id
    add_index :boards, :user_id
  end
end
