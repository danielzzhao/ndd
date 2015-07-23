class TasksController < ApplicationController
	def index

		@tasks = city.tasks
	end

	# private
	# def task_params
	# 	params.require(:task).permit(:name, :description, :complete)
	# end
end
