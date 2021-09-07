class FeedItemsController < ApplicationController

  before_action :is_admin?, except: [:index, :toggle_favorite]
  before_action :authenticate_user!, only: :toggle_favorite


  def toggle_favorite
    @feed_item = FeedItem.find_by(id: params[:id])
    current_user.favorited?(@feed_item) ?
    current_user.unfavorite(@feed_item) :
    current_user.favorite(@feed_item)
    # redirect_to events_path, notice: current_user.favorited?(@event) ? "liked" : "unliked"
  end

  def index
    @feed_items = FeedItem.all
  end

  # def show
  #   @feed_item = FeedItem.find(params[:id])
  # end

  def new
    @feed_item = FeedItem.new
  end

  def edit
    @feed_item = FeedItem.find(params[:id])
  end

  def create
    @feed_item = FeedItem.new(feed_items_params)
    if @feed_item.save
      redirect_to feed_items_path, notice: "Item created"
    else
      render :new
    end
  end

  def update
    @feed_item = FeedItem.find(params[:id])
    @feed_item.update!(event_params)
    redirect_to @feed_items, notice: "Item updated"
  end

  def destroy
    @feed_item = FeedItem.find(params[:id])
    @feed_item.destroy
    redirect_to feed_items_path, notice: "Item deleted"
  end

  private

  def is_admin?
    committee_positions = ["President", "Treasurer", "Secretary", "Events-Manager", "Social-Secretary", "Publicity-Officer", "Content-Creator"]
    redirect_to feed_items_path unless committee_positions.include?(current_user.committee_position)
  end

  def feed_items_params
    params.require(:feed_item).permit(:description, :url, :photo)
  end
end
