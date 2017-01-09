class AddPositionToCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :position, :string
  end
end
