class CreateCongressPeople < ActiveRecord::Migration
  def change
    create_table :congress_people do |t|

      t.timestamps null: false
    end
  end
end
