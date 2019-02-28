class BookingsController < ApplicationController
  def index
  end

  def new
    @booking = Booking.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.athlete = current_user

    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :session_id)
  end
end
