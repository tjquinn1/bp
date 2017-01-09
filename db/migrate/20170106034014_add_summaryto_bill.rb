class AddSummarytoBill < ActiveRecord::Migration
  def change
  	add_column :bills, :summary, :text
  end
end
