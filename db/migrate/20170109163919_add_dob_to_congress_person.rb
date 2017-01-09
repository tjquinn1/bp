class AddDobToCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :dob, :date
  end
end
