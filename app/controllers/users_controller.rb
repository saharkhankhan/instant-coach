class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update]

  def index
    @coaches = User.near(current_user.address, 2).where(coach: true).where.not(latitude: nil, longitude: nil)
    @markers = @coaches.map do |coach|
      {
        lng: coach.longitude,
        lat: coach.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { coach: coach }),
        image_url: helpers.asset_url('whistle.png')
      }
    end
  end

  def results
    @users = User.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  # def set_user
  #   @user = User.find(params[:id])
  # end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :coach, :username, :email, :password, :bio, :address)
  end
end
