class ArtworksController < ApplicationController
  def new
  end

  def index
    @artworks = Artwork.all
  end

  def show
  end
end
