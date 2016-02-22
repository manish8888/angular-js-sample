class Employes < ActiveRecord::Migration
  def change
  	create_table :employes do |t|
     t.string :first_name
     t.string :last_name
     t.integer :age
     t.integer :salary
     t.string :state
     t.string :country
     t.string :category
    end
  end
end
