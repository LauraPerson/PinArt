class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
    @artworks_current_user = Artwork.where(user_id: current_user.id)
    @artwork_tagged = @artworks_current_user.tagged_with(@tag)

    # @artworks_current_user.each do |artwork|
    #   if artwork.tag_list.length == 1 && artwork.tag_list.first == @tag
    #     @artworks_tag = artwork
    #   else 
    #     artwork.tag_list do |tag|
    #       raise
    #       @artworks_tag = []
    #       @artworks_tag << artwork.where(tag: @tag)
    #     end
    #   end
            
    # end
  end


end
