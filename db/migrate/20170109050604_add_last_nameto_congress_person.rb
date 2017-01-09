class AddLastNametoCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :last_name, :string
  end
end
