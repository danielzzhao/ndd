class TasksController < ApplicationController
  def index
    # @filterrific = initialize_filterrific(
    #     Student,
    #     params[:filterrific],
    #     select_options: {
    #       sorted_by: Student.options_for_sorted_by,
    #       with_country_id: Country.options_for_select
    #     },
    #     # persistence_id: 'false',
    #     # default_filter_params: {},
    #     # available_filters: [],
    #   ) or return   

    @city = City.find(params[:city_id])
    @task = @city.tasks.find(params[:id])
    @tasks = @city.tasks.all

    # respond_to do |format|
    # format.html
    # format.js
    # end

    # rescue ActiveRecord::RecordNotFound => e
    # # There is an issue with the persisted param_set. Reset it.
    # puts "Had to reset filterrific params: #{ e.message }"
    # redirect_to(reset_filterrific_url(format: :html)) and return
    # end
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


