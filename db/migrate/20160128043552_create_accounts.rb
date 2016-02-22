class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.belongs_to :supplier, index: true
      t.string :account_number
      t.timestamps 
    end
  end
end
