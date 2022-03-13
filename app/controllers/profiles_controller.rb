class ProfilesController < ApplicationController

  def index
    @users = User.all
    @search = Search.new
  end

  def show
    @user = User.find(params[:id])
  end
end

