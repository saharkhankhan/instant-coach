class SessionsController < ApplicationController
  def index
    @coach = User.find(params[:user_id])
    @coach_sessions = Session.all.where(user_id: @coach.id)
  end

  def new
    @coach = current_user
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    @session.coach = current_user
    if @session.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @coach = current_user
    @session = Session.new
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
    redirect_to user_path(current_user)
  end

  private

  def session_params
    params.require(:session).permit(:title, :description)
  end
end
