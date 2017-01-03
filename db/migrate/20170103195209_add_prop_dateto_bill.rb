class AddPropDatetoBill < ActiveRecord::Migration
  def change
  	add_column :bills, :prop_date, :date
  end
end
