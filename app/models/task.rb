class Task < ActiveRecord::Base
  validates :name, :description, presence: true
    belongs_to :city
  filterrific(
  default_filter_params: { sorted_by: 'created_at_desc' },
  available_filters: [
    :sorted_by,
    #:search_query,
    :with_city_id,
    :with_complete,
    :with_dreamer
  ]
)
  # associations

  # filters on 'country_id' foreign key
	scope :with_city_id, lambda { |city_ids|
  	where(country_id: [*city_ids])
	}

  # filters on 'gender' attribute
	scope :with_complete, lambda { |completes|
  	where(complete: [*completes])
	}

	# filters on 'gender' attribute
	scope :with_dreamer, lambda { |dreamers|
	where(dreamer: [*dreamers])
	}

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
