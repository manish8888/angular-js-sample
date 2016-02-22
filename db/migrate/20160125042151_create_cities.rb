class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :name
      t.integer :state_id
      t.integer :ward_number

      t.timestamps
    end
  end
end
