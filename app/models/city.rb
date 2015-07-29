class City < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	has_many :campaigns
	has_many :employees
	validates :name, :description, presence: true
end
