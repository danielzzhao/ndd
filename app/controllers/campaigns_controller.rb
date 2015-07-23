class CampaignsController < ApplicationController

	def index
		@city = city.find(params[:city_id])
		@campaigns = city.campaigns
	end

	def create
		@city = city.find(params[:city_id])
		@campaign = @city.campaigns.create(campaign_params)
		redirect_to user_photo_path(current_user, @photo)

	end

	def edit
		@city = city.find(params[:city_id])
		@campaign = @city.campaigns.find(params[:id])
	end

	def update
		@city = city.find(params[:city_id])
		@campaign = @city.campaigns.find(params[:id])

		if @campaign.update(campaign_params)
			redirect_to 
		else
			render 'edit'
		end
	end

end
