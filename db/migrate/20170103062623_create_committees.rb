class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
    	t.string :committee

      t.timestamps null: false
    end
  end
end
