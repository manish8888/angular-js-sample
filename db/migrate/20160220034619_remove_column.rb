class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :employes, :age, :integer
  end
end
