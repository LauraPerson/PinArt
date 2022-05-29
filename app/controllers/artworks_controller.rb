class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
  end

  def show
  end

  def new 
    @user_events = Event.all.where(user_id: current_user)
    @artwork = Artwork.new

    
  end


  def create
    @artwork = Artwork.new(params_artwork)
    @artwork.user = current_user
    @event_id = params[:artwork][:event].to_i
    event = Event.where(id: @event_id)
    @artwork.event = event
    if @artwork.save!
      redirect_to artworks_path
    else
      redirect_to home_path
    end
  end

  private 

  def params_artwork
    params.fetch(:artwork).permit(:name, :artist, :category, :user_id, :event_id, :tag_list)
  end
end
