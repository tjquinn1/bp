class AddBillNumbertoBill < ActiveRecord::Migration
  def change
  	add_column :bills, :bill_number, :string
  end
end
