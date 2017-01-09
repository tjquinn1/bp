class AddImagetoCongressPerson2 < ActiveRecord::Migration
  def self.up
    change_table :congress_people do |t|
      t.attachment :image
    end
  end
end
