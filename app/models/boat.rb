class Boat < ApplicationRecord
	has_and_belongs_to_many :jobs
	
	validates :name, presence: true, uniqueness: true
	validates :containers, presence: true, numericality: true

	has_attached_file :avatar
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	
end
