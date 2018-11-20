class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @farmers = User.farmer
    @clients = User.client
  end
end
