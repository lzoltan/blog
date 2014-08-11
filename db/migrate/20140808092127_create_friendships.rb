class CreateFriendShips < ActiveRecord::Migration
  def change
    create_table :friend_ships do |t|
      t.integer :user_id, null:  false
      t.integer :friend_id, null:  false
      t.string :status, null: false

      t.timestamps
    end
  end
end
