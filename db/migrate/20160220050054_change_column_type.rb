class ChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :employes, :category, :integer
  end
end
