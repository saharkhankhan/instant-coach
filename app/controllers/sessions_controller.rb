class SessionsController < ApplicationController

  def index
    # @coach = User.find(params[:user_id])
    # @coach_sessions = Session.all.where(user_id: @coach.id)
  end

  def new
    @session = sessions.new
  end

  def create
    @user = User.find(params[:user_id])
    @session = Session.new(session_params)
    @session.coach = @user
    if @session.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:user_id])
    @session.update(session_params)
    @session.user = @user
    if @session.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @user = @session.coach
    @session.destroy
    redirect_to user_path(@user)
  end

  private

  def session_params
    params.require(:session).permit(:duration, :user_sport_id)
  end
end
