class ApplicationController < ActionController::Base

  def index
    @places = Place.all
    @place = Place.new # For the form to create a new place
  end

  def create_place
    @place = Place.new(place_params)
    if @place.save
      redirect_to root_path, notice: "Place added successfully!"
    else
      @places = Place.all
      flash.now[:alert] = "Failed to add place. Please try again."
      render :index
    end
  end

  private

  def place_params
    params.require(:place).permit(:name)
  end
  
end
