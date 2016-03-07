class AddColumnCompanyIdClerks < ActiveRecord::Migration
  def change
  	add_column :clerks, :company_id, :string
  end
end
