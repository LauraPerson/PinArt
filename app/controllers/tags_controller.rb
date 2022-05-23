class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new 
    @tag = Tag.new
  end


  def create
    @tag = Tag.new(params_tag)
    @tag.user = current_user
    if @tag.save!
      redirect_to tags_path
    else
      redirect_to home_path
    end
  end

  private 

  def params_tag
    params.require(:tag).permit(:name)
  end
end
