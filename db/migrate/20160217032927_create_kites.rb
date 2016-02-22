class CreateKites < ActiveRecord::Migration
  def change
    create_table :kites do |t|

      t.timestamps
    end
  end
end
