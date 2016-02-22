class RenameColumn < ActiveRecord::Migration
  def change
  	 rename_column :employes, :country, :current_country
  end
end
