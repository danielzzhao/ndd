class CampaignsController < ApplicationController

	def index
		@city = City.find(params[:city_id])
		@campaigns = @city.campaigns
	end

	def create
		@city = City.find(params[:city_id])
		@campaign = @city.campaigns.create(campaign_params)
		redirect_to city_campaigns_path(@city, @campaign)
	end

	def edit
		@city = City.find(params[:city_id])
		@campaign = @city.campaigns.find(params[:id])
	end

	def update
		@city = City.find(params[:city_id])
		@campaign = @city.campaigns.find(params[:id])

		if @campaign.update(campaign_params)
			redirect_to 
		else
			render 'edit'
		end
	end

end
