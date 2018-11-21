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
    if params[:city]
      @farmers = User.search(params[:city]).farmer
    else
      @farmers = User.farmer
    end

    @markers = @farmers.map do |farmer|
      {
        lng: farmer.longitude,
        lat: farmer.latitude
      }
    end
  end
end
