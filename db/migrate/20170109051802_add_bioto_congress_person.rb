class AddBiotoCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :bio, :text
  end
end
