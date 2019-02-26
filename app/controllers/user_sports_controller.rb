class UserSportsController < ApplicationController
  def index
    @user_sports = UserSport.all
  end

  def show
    @user_sport = UserSport.find(params[:sport_id])
  end
end
