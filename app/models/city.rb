class City < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	validates :name, :description, presence: true
end
