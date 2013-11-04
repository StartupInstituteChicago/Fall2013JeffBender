class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :restaurant

      t.timestamps
    end
    
    add_index :comments, [:restaurant_id]
  end
end
