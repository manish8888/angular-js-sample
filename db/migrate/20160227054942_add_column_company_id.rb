class AddColumnCompanyId < ActiveRecord::Migration
  def change
  	add_column :companies, :company_id, :string
  end
end
