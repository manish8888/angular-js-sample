class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
     t.string :name
     t.string :description 
     t.timestamps
    end
  end
end
