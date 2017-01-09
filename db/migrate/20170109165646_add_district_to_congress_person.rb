class AddDistrictToCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :district, :integer
  end
end
