class BookingsController < ApplicationController

  def create
    @current_user = current_user
    @farmer = params[:id]
    @booking = Booking.new(confirmation: true, client_id: @current_user.id, farmer_id: @farmer, date: @date)
    ap @booking
    @booking.save
  end

  def show
    @booking = Booking.find(params[:id])
  end
end

    # @date = "2018-10-12"
    # @current_user = 2
    # @farmer = 13
    # @booking = Booking.new(confirmation: true, client_id: @current_user, farmer_id: @farmer, date: @date)
    # ap @booking
