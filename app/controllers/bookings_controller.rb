class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.athlete = @user
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @user = @booking.coach
    @booking.destroy
    redirect_to user_path(@user)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :sessions_id)
  end
end
