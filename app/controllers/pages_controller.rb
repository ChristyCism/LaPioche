class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @farmers = User.farmer
    @clients = User.client
  end

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
