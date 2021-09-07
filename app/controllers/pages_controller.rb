class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @bookings = Booking.all
    @favorites = Favorite.favorite_list.each do |f|
      f.favoritable_id
    end
    @feedItems = FeedItem.all
  end

  def about

  end
end
