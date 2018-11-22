class UsersController < ApplicationController

  def index
    # if there is queries
    # display results from search method
    # else
    # display 20 last farmers
    search
  end

  private

  def search

    if params[:city].present?
      city = params[:city]
      @farmers = User.near(city, 15).farmer
    else
      @farmers = User.farmer.all
    end

    @markers = @farmers.map do |farmer|
      {
        lng: farmer.longitude,
        lat: farmer.latitude
      }
    end
    cookies[:date] = @date
  end
end
