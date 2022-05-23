class TagsController < ApplicationController


  def new
  end

  def index
    @tags = Tag.all
  end

  def show
  end
end
