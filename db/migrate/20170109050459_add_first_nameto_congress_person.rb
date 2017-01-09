class AddFirstNametoCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :first_name, :string
  end
end
