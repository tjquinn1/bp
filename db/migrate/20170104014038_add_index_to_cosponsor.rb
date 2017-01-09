class AddIndexToCosponsor < ActiveRecord::Migration
  def change
  	add_reference  :cosponsors, :bill, index: true
  end
end
