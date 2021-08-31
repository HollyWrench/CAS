class FeedItemsController < ApplicationController

  before_action :is_admin?

  def is_admin?
    committee_positions = ["President", "Treasurer", "Secretary", "Events-Manager", "Social-Secretary", "Publicity-Officer", "Content-Creator"]
    redirect_to feed_items_path unless committee_positions.include(current_user.committee_position)
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
    @feed_item = FeedItem.new(event_params)
    if @feed_item.save
      # redirect_to feed_items_path, notice: "Thanks for your suggestion (:"
    else
      render :new
    end
  end

  def update
    @feed_item = FeedItem.find(params[:id])
    @feed_item.update!(event_params)
    redirect_to @feed_items
  end

  def destroy
    @feed_item = FeedItem.find(params[:id])
    @feed_item.destroy
    redirect_to feed_items_path
  end
end
