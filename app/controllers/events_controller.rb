class EventsController < ApplicationController

  def index
    if params[:filter].present?
      @events = Event.where(category: params[:filter])
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
