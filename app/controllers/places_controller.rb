class PlacesController < ApplicationController

  def index
    @places = Place.all # Fetch all places for the main page
    @place = Place.new  # For the form to create a new place
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to root_path, notice: "Place added successfully!"
    else
      @places = Place.all # Reload places if validation fails
      flash.now[:alert] = "Failed to add place. Please try again."
      render :index
    end
  end

  private

  def place_params
    params.require(:place).permit(:name)
  end

end