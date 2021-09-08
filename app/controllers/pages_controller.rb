class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @bookings = Booking.all
    @favorites = Favorite.all
    @feed_items = FeedItem.all
  end

  def about

  end

  def join
  end
end
