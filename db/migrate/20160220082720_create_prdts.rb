class CreatePrdts < ActiveRecord::Migration
  def change
    create_table :prdts do |t|
    t.string :name
    end
  end
end
