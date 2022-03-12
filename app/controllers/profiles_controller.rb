class ProfilesController < ApplicationController
  before_action :set_user, only: %i[ show ]

  def index
    @users = User.all
    @skills = Skill.all
  end

  # GET /horses/1 or /horses/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end

