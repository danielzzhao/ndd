class Task < ActiveRecord::Base
  belongs_to :city
  validates :name, :description, presence: true
end
