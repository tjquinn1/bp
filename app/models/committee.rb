class Committee < ActiveRecord::Base
	belongs_to :bill
	has_many :congress_people
end
