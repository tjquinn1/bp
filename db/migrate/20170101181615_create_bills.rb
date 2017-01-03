class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|

    	t.string :bill_name
    	t.string :stage

      t.timestamps null: false
    end
  end
end
