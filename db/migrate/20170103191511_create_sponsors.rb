class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
    	t.string :sponsor

      t.timestamps null: false
    end
  end
end
