class UsersController < ApplicationController

  def index
    # if there is queries
    # display results from search method
    # else
    # display 20 last farmers
    search_by_params
  end

  def show
    @user = User.find(params[:id])
  end

  def search
    ap cookies[:date]
  end

  private

  def search_by_params

    if params[:city].present?
      city = params[:city]
      @farmers = User.near(city, 5).farmer
    else
      @farmers = User.farmer.all
    end

    @markers = @farmers.map do |farmer|
      {
        lng: farmer.longitude,
        lat: farmer.latitude
      }
    end
    cookies[:date] = params[:date]
    ap cookies[:date]
  end
end
