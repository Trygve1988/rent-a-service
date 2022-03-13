class SearchesController < ApplicationController

  # POST /searches or /searches.json
  def create
    id = params[:search][:skill_id].to_i
    @users = Skill.find(id).users
    render turbo_stream: turbo_stream.update('users',
                                             partial: 'profiles/search_result',
                                             locals: {users: @users})

  end

end
