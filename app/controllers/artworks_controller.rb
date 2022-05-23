class ArtworksController < ApplicationController
  def new
  end

  def index
    @artworks = Artwork.all
  end

  def show
  end

  def new 
    @artwork = Artwork.new
    @tags = Tag.all
    
  end


  def create
    @artwork = Artwork.new(params_artwork)
    @artwork.user = current_user
    if @artwork.save!
      redirect_to artworks_path
    else
      redirect_to home_path
    end
  end

  private 

  def params_artwork
    params.fetch(:artwork).permit(:name, :artist, :category, :user_id, :event_id)
  end
end
