class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :user
      t.references :relation
      t.string :status
      t.timestamps
    end
   end
end
