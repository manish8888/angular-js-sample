class CreateMultirowTexts < ActiveRecord::Migration
  def change
    create_table :multirow_texts do |t|
    t.string :type
    t.string :name	
    end
  end
end
