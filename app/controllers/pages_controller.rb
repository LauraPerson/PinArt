
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      @owned_tags = current_user.owned_tags
      @tags = @owned_tags.most_used(10)
      @events_user = Event.all.where(user_id: current_user)

      if params[:query].nil?
        @events = @events_user.first(5)
      else
        @events = @events_user.where('name ILIKE?', "%#{params[:query]}%") 
        @tags = @owned_tags.where('name ILIKE?', "%#{params[:query]}%") 
      end

      respond_to do |format|
        format.html # Follow regular flow of Rails
        format.text { render partial: "pages/list", locals: {events: @events}, formats: [:html] }
      end
    end
  end
end
