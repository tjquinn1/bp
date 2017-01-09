class CreateCosponsors < ActiveRecord::Migration
  def change
    create_table :cosponsors do |t|
    	t.string :cosponsor

      t.timestamps null: false
    end
  end
end
