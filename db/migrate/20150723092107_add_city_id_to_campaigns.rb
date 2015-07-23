class AddCityIdToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :city_id, :integer
  end
end
