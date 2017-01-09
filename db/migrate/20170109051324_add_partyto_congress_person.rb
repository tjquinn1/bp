class AddPartytoCongressPerson < ActiveRecord::Migration
  def change
  	add_column :congress_people, :party, :string
  end
end
