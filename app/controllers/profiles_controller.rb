class ProfilesController < ApplicationController

  def index
    @users = User.all
    @search = Search.new
  end

  def show
    @user = User.find(params[:id])
  end

  def test
    id = params[:skill_id].to_i
    @users = Skill.find(id).users
    render turbo_stream: turbo_stream.update(
      'users',
      partial: 'profiles/search_result',
      locals: {users: @users}
    )
  end
end

