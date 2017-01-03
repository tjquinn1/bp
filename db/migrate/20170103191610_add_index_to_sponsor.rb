class AddIndexToSponsor < ActiveRecord::Migration
  def change
  	add_reference  :sponsors, :bill, index: true
  end
end
