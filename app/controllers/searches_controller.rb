class SearchesController < ApplicationController

  # POST /searches or /searches.json
  def create
    id = params[:search][:skill_id].to_i
    @skill = Skill.find(id)
    session[:current_skill_id] = @skill.id
    session[:current_skill_title] = @skill.title
    redirect_to root_path
  end

end
