class JoinsController < ApplicationController
  def create
    redirect_to root_path, notice: "Your application was successful!"
  end
end
