class AddIndexToCommittee < ActiveRecord::Migration
  def change
  	add_reference  :committees, :bill, index: true
  end
end
