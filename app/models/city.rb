class City < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	has_many :campaigns
	has_many :employees
	validates :name, :description, presence: true

	def self.options_for_select
  	order('LOWER(name)').map { |e| [e.name, e.id] }
	end
end
