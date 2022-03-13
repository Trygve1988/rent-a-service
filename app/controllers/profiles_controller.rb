class ProfilesController < ApplicationController

  def index
    if session[:current_skill_id]
      id = session[:current_skill_id]
      @users = Skill.find(id).users
    else
      @users = User.all
    end
    @search = Search.new
  end

  def show
    @user = User.find(params[:id])
  end
end

