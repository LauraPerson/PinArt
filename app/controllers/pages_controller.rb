class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @tags = current_user.owned_taggings
    @owned_tags = current_user.owned_tags
  end
end
