class CitiesController < ApplicationController

	def index
		@cities = City.all
	end

	def show
		@city = City.find(params[:id])
		#@task = @city.tasks.find(params[:id]) idk what this line does?
    	@tasks = @city.tasks.all
    	@filterrific = initialize_filterrific(
        Task,
        params[:filterrific],
        :select_options => {
          #sorted_by: Task.options_for_sorted_by,
          with_city_id: City.options_for_select,
          with_complete: ['Completed', 'Incomplete'],
          with_dreamer: ['Completed', 'Incomplete']
        },
         persistence_id: 'shared_key',
        # default_filter_params: {},
        # available_filters: %w[
        #   with_city_id
        #   with_complete
        #   with_dreamer
        #   ]
      ) or return   
    @tasks = @filterrific.find.page(params[:page])

    # @city = City.find(params[:city_id])
    # #@task = @city.tasks.find(params[:id])
    # @tasks = @city.tasks.all

    respond_to do |format|
    format.html
    format.js
    end
	end

	def new
		@city = City.new
	end

	def create
		@city = City.new(city_params)

		if @city.save
			redirect_to cities_path
		else
			render 'new'
		end
	end

	def edit
		@city = City.find(params[:id])
	end

	def update
		@city = City.find(params[:id])

		if @city.update(city_params)
			redirect_to cities_path
		else
			render 'edit'
		end
	end

	def destroy
		@city = City.find(params[:id])
		@city.destroy

		redirect_to cities_path
	end 

	def ambassador
	end

	def city_params
		params.require(:city).permit(:name, :description, :image)
	end
end