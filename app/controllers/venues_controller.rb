class VenuesController < ApplicationController
  def index
  	@venues = Venue.all
  end

  def new
  	@venue = Venue.new
  end

  def create
  	@venue = Venue.new(venue_params)
  	if @venue.save
  		flash[:success] = "Venue added"
  		redirect_to venues_url
  	else
  		render 'new'
  	end
  end

  def show
  	@venue = Venue.find(params[:id])
  end

  def edit
  	@venue = Venue.find(params[:id])
  end

  def update
  	@venue = Venue.find(params[:id])
  	if @venue.update_attributes(venue_params)
  		flash[:success] = "Updated Venue Info"
  		redirect_to @venue
  	else
  		render 'edit'
  	end
  end

  def destroy
  	Venue.find(params[:id]).destroy
  	flash[:success] = "Venue Deleted"
  	redirect_to venues_url
  end

private

  def venue_params
  	params.require(:venue).permit(:name, :address, :city, :state_cd, :zip, :phone, :cusine)
  end


end
