class AddCurrentCityToCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :current_city, :string
  end
end
