class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    # Bookings.where(user_id: current_user.id)
  end

  def about

  end
end
