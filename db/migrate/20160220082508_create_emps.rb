class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
    t.string :name
    end
  end
end
