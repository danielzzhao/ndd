class Task < ActiveRecord::Base
  validates :name, :description, presence: true

  filterrific(
  #default_filter_params: { sorted_by: 'created_at_desc' },
  available_filters: [
    #:sorted_by,
    #:search_query,
    :with_city_id,
    :with_complete,
    :with_dreamer
  ]
)
  # associations
     belongs_to :city

  # filters on 'city_id' foreign key
	scope :with_city_id, lambda { |city_ids|
  	where(city_id: [*city_ids])
	}

  # filters on 'complete' attribute
	scope :with_complete, lambda { |flag|
    return nil  if 1 == flag # checkbox unchecked
    where(complete: true)
  }

	# # filters on 'dreamer' attribute
	# scope :with_dreamer, lambda { |flag|
 #    return nil  if 0 == flag # checkbox unchecked
 #    where(dreamer: true)
	# }

	#filter sort
	def self.options_for_sorted_by
    [
      ['Name (a-z)', 'name_asc'],
      ['Registration date (newest first)', 'created_at_desc'],
      ['Registration date (oldest first)', 'created_at_asc'],
      ['City (a-z)', 'city_name_asc']
    ]
  end
end
