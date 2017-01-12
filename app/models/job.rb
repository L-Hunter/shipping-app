class Job < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :boats

	validates :name, presence: true, uniqueness: true
	validates :containers, presence: true, numericality: true
	validates :description, presence: true
	validates :cost, presence: true, :numericality => { :greater_than_or_equal_to => 1000 }
end
