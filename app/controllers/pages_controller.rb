
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]



  def home
    @owned_tags = current_user.owned_tags
    @most_used_tags = @owned_tags.most_used(10)
    @events = Event.all.where(user_id: current_user)

    if params[:query].present?
      @events = @events.where('name ILIKE?', "%#{params[:query]}%") 
      @owned_tags = @owned_tags.where('name ILIKE?', "%#{params[:query]}%") 
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "pages/list", locals: {events: @events}, formats: [:html] }
    end
  end
end
