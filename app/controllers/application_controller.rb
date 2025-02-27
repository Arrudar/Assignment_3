class ApplicationController < ActionController::Base
  
# Ensure @places is available 
before_action :set_places

def index
  @place = Place.new
  render "places/index"
end

private

def set_places
  @places = Place.all
end

end
