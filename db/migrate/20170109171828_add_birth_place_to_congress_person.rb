class AddBirthPlaceToCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :birth_place, :string
  end
end
