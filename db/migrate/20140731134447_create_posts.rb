class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content, default: ""

      t.timestamps
    end
  end
end
