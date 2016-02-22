class CreateSegments < ActiveRecord::Migration
  def change
    create_table  :segments do |t|
    	t.integer :party_id
    	t.string  :name
    	t.timestamps
    
    end
  end
end
