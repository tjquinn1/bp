class CreateBps < ActiveRecord::Migration
  def change
    create_table :bps do |t|
    	t.text :bp

      t.timestamps null: false
    end
  end
end
