class TasksController < ApplicationController
  def index    
    @city = City.find(params[:city_id])
    @task = @city.tasks.find(params[:id])
    @tasks = @city.tasks.all
  end

  def show
    @city = City.find(params[:city_id])
    @task = @city.tasks.find(params[:id])
    @tasks = @city.tasks.all ##
  end

  def new
    @city = City.find(params[:city_id])
    @task = @city.tasks.new
  end

  def edit
    @city = City.find(params[:city_id])
    @task = @city.tasks.find(params[:id])
    @edit = true 
  end

  def create
    @city = City.find(params[:city_id])
    @task = @city.tasks.create(task_params)
    @task.save
    # render 'index'
    redirect_to city_path(@city) ####
  end

  def update
    @city = City.find(params[:city_id])
    @task = @city.tasks.find(params[:id])
    
    @tasks = @city.tasks.all

    if @task.update(task_params)
      # render 'index'
      redirect_to city_path(@city) 
    else
      render 'edit'
    end
  end

  def destroy
    @city = Course.find(params[:city_id])
    @task = @city.tasks.find(params[:id])
    @task.destroy
    # redirect_to course_tdls_path(@city)
    redirect_to user_course_path(current_user, @city)
  end

  private
      def task_params
        params.require(:task).permit(:name, :description, :youtube_url, :image, :complete, :dreamer) #add more later)
      end
end


