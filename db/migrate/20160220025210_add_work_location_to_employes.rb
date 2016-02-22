class AddWorkLocationToEmployes < ActiveRecord::Migration
  def change
    add_column :employes, :work_location, :string
  end
end
