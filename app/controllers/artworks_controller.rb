class ArtworksController < ApplicationController
  
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
    @related_artworks = @artwork.find_related_tags
  end

  def new 
    @user_events = Event.all.where(user_id: current_user)
    @artwork = Artwork.new
  end


  def create
    @artwork = Artwork.new(params_artwork)
    @artwork.user = current_user
    @event = Event.find(params[:artwork][:event])

    @selected_event = EventArtwork.new
    @selected_event.event = @event
    @selected_event.artwork = @artwork
    @selected_event.save!
    @artwork.event_artwork = @selected_event

    @artwork.tag_list.each do |tag|
      current_user.tag(@artwork, :with => tag, :on => tag)
    end

    # @artwork.tag_list.each do |tag|
    #   @artwork.tagged_with(tag)
    # end
    if @artwork.save!
      redirect_to artworks_path
    else
      redirect_to home_path
    end
  end

  
  private 
  
  def params_artwork
    params.require(:artwork).permit(:name, :artist, :category, :user_id, :event_artwork_id, :tag_list)
  end
end
