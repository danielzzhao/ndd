class AddCityIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :city_id, :integer
  end
end
