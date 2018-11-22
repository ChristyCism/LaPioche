class BookingsController < ApplicationController

  def create
    ap "cookies[:date]"
    ap cookies[:date]
    @current_user = current_user
    @farmer = params[:user_id]
    @booking = Booking.new(confirmation: true, client_id: @current_user.id, farmer_id: @farmer, date: cookies[:date])
    ap @booking
    @booking.save!
    redirect_to booking_path(@booking)
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
