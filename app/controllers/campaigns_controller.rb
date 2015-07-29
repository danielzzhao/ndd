class CampaignsController < ApplicationController

	def index
	    @city = City.find(params[:city_id])
	    @campaigns = @city.campaigns.all
	end
	
	def new
	    @city = City.find(params[:city_id])
	    @campaign = @city.campaigns.new
  	end

	def create
		@city = City.find(params[:city_id])
		@campaign = @city.campaigns.create(campaign_params)
		@campaign.save
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
			redirect_to city_campaigns_path(@city, @campaign)
		else
			render 'edit'
		end
	end

	def destroy
		@city = City.find(params[:city_id])
		@campaign = @city.campaigns.find(params[:id])
		@campaign.destroy
		redirect_to city_campaigns_path(@city, @campaign)
	end

private
	def campaign_params
		params.require(:campaign).permit(:name, :description, :date, :image, :complete, :website)
	end

end
