class CongressPerson < ActiveRecord::Base
	has_many :bills
	belongs_to :committee
	has_attached_file :image, styles: { medium: "400x400#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
