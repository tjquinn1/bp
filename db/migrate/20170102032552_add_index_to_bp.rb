class AddIndexToBp < ActiveRecord::Migration
  def change
  	add_reference  :bps, :bill, index: true
  end
end
