class EventsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def toggle_favorite
    @event = Event.find_by(id: params[:id])
    current_user.favorited?(@event) ?
    current_user.unfavorite(@event) :
    current_user.favorite(@event)
    # redirect_to events_path, notice: current_user.favorited?(@event) ? "liked" : "unliked"
  end

  def index
    if params[:filters].present?
      @events = Event.where(category: params[:filters][:category])
      # was 'filter' and [:filter] with no [:category] after until I added the simple form to filter the events by category
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    # @event.user = current_user
    if @event.save
      redirect_to events_path, notice: "Thanks for your suggestion (:"
    else
      render :new
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.update!(event_params)
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:location, :name, :price, :description, :photo, :category, :date)
  end
end
