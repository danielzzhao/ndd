class TasksController < ApplicationController

	def index
		@city = City.find(params[:city_id])
		@tasks = @city.tasks
	end

	def show
		@tasks = cit
	end

	def new
		@task = Tasks.new
	end

	def create
		@task = tasks.build(task_params)
		if @task.save
			redirect_to cities_tasks_path(@task)
		else
			render 'new'
		end
	end

	private
	def task_params
		params.require(:task).permit(:name, :description, :complete, :image, :dreamer)
	end
end
