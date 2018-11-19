class UsersController < ApplicationController
  def index
    @farmers = User.where(farmer: true)
    @clients = User.where(farmer: false)
  end
end
