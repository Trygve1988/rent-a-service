class UserSkillsController < ApplicationController

  # GET /user_skills or /user_skills.json
  def index
    @user_skills = current_user.user_skills
  end

  # POST /user_skills or /user_skills.json
  def create
    @user_skill = UserSkill.new(user_skill_params)
    @user_skill.save
    render turbo_stream: turbo_stream.prepend('user_skills',
                                          partial: "user_skills/user_skill",
                                          locals: {user_skill: @user_skill})
  end

  # DELETE /user_skills/1 or /user_skills/1.json
  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user_skill.destroy
    render turbo_stream: turbo_stream.remove(@user_skill)
  end

  private
    # Only allow a list of trusted parameters through.
    def user_skill_params
      params.require(:user_skill).permit(:user_id, :skill_id)
    end
end
