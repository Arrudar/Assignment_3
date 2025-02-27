class ApplicationController < ActionController::Base
  
# debug places (@places to be available)
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
