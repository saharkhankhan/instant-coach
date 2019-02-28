class UserSportsController < ApplicationController
  def index
    @user_sports = UserSport.all
  end

  def show
    @user_sport = UserSport.find(params[:sport_id])
  end

  def new
    @user = current_user
    @user_sport = UserSport.new
  end

  def create
    @user_sport = UserSport.new()
    @user_sport.user = current_user
    sport = Sport.find(params[:user_sport][:sport_id].to_i)
    @user_sport.sport = sport
    if @user_sport.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def session_params
    params.require(:user_sport).permit(:sport, :user_sport_id, :user)
  end
end
