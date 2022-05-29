class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @tags = ActsAsTaggableOn::Tag.all.where()
  end
end
