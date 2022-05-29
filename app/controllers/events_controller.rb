class EventsController < ApplicationController

  def index
    @events = Event.all
    @user_events = Event.all.where(user_id: current_user)
  end

  def show
    @event = Event.find(params[:id])
    @event_artworks = EventArtwork.where(event_id: @event.id)
    @artworks = []
    @event_artworks.each do |e|
      @artworks << e.artwork
    end
  end


  def new 
    @event = Event.new
  end


  def create
    @event = Event.new(params_event)
    @event.user = current_user
    if @event.save!
      redirect_to events_path
    else
      redirect_to home_path
    end
  end

  private 

  def params_event
    params.require(:event).permit(:name, :city, :institution, :date)
  end
end


