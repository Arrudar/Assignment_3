class EntriesController < ApplicationController

  def index
    @place = Place.find(params[:place_id]) # Find place 
    @entries = @place.entries             # Put all entries for the place
    @entry = Entry.new                    # Create new entrentries (using a form)
  end

  def create
    @place = Place.find(params[:place_id])
    @entry = @place.entries.build(entry_params)
    if @entry.save
      redirect_to place_entries_path(@place), notice: "Your entry was added successfully, IhuuuUU!?"
    else
      @entries = @place.entries # Reload entries in case it fails
      flash.now[:alert] = "Oh! I failed to add entry. Could you please try again sir??"
      render :index
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :date)
  end

end