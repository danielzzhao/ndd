class CampaignsController < ApplicationController

	def show
	end
	
	def create
		@city = City.find(params[:city_id])
		@campaign = @city.campaigns.create(campaign_params)
		redirect_to city_path(@city, @campaign)
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

	def destroy
		@city = City.find(params[:city_id])
		@campaign = @city.campaigns.find(params[:id])
		@campaign.destroy
		redirect_to city_path(@city)
	end

private
	def campaign_params
		params.require(:campaign).permit(:name, :description, :date, :image, :complete, :website)
	end

end
