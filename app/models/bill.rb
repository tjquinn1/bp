class Bill < ActiveRecord::Base
		belongs_to :congress_person
		has_many :bps, :dependent => :destroy
		has_many :committees, :dependent => :destroy
		has_many :sponsors, :dependent => :destroy
		has_many :cosponsors, :dependent => :destroy

		accepts_nested_attributes_for :bps, :reject_if => :all_blank, :allow_destroy => true
		accepts_nested_attributes_for :committees, :reject_if => :all_blank, :allow_destroy => true
		accepts_nested_attributes_for :sponsors, :reject_if => :all_blank, :allow_destroy => true
		accepts_nested_attributes_for :cosponsors, :reject_if => :all_blank, :allow_destroy => true
end
