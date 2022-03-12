class ProfilesController < ApplicationController
  before_action :set_user, only: %i[ show ]

  def index
    @users = User.all
    @search = Search.new
  end

  # GET /horses/1 or /horses/1.json
  def show
    @comment = Comment.new
    @comments = Comment.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end

