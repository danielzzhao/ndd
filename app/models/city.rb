class City < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	has_many :campaigns
	validates :name, :description, presence: true
end
