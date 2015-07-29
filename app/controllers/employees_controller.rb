class EmployeesController < ApplicationController
  def index    
    @city = City.find(params[:city_id])
    @employees = @city.employees.all
    # @employee = @city.employees.find(params[:id])
  end

  def show
    @city = City.find(params[:city_id])
    @employee = @city.employees.find(params[:id])
    @employees = @city.employees.all ##
  end

  def new
    @city = City.find(params[:city_id])
    @employee = @city.employees.new
  end

  def edit
    @city = City.find(params[:city_id])
    @employee = @city.employees.find(params[:id])
    @edit = true 
  end

  def create
    @city = City.find(params[:city_id])
    @employee = @city.employees.create(employee_params)
    @employee.save
    # render 'index'
    redirect_to city_employees_path(@city) 
  end

  def update
    @city = City.find(params[:city_id])
    @employee = @city.employees.find(params[:id])
    
    @employees = @city.employees.all

    if @employee.update(employee_params)
      # render 'index'
      redirect_to city_path(@city) 
    else
      render 'edit'
    end
  end

  def destroy
    @city = Course.find(params[:city_id])
    @employee = @city.employees.find(params[:id])
    @employee.destroy
  end

  private
      def employee_params
        params.require(:employee).permit(:name, :bio, :image) 
      end
end