class TasksController < ApplicationController
  def index
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
  end

  private
      def task_params
        params.require(:task).permit(:name, :description, :amount_raised, 
        :total_amount, :youtube_url, :image, :complete, :dreamer) #add more later)
      end
end


