class CitiesController < ApplicationController
	before_action :authorize_admin!, except: [:index, :show, :ambassador]
	

	def index
		@cities = City.all
	end

	def show
		@city = City.find(params[:id])
		#@task = @city.tasks.find(params[:id]) idk what this line does?
    	@tasks = @city.tasks.all
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

	def authorize_admin!
		unless current_user.admin?
			redirect_to :root, alert: "You cant do that!"
		end
	end

	def city_params
		params.require(:city).permit(:name, :description, :image)
	end
end