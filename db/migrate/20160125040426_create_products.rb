class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :comment_id
      t.boolean :is_active

      t.timestamps
    end
  end
end
