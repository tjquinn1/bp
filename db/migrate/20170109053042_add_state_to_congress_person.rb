class AddStateToCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :state, :string
  end
end
