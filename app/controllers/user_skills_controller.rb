class UserSkillsController < ApplicationController
  before_action :set_user_skill, only: %i[ show edit update destroy ]

  # GET /user_skills or /user_skills.json
  def index
    @user_skills = UserSkill.where(user_id: current_user.id)
    @user_skill = UserSkill.new
  end

  # GET /user_skills/new
  def new
    @skill_options = Skill.all
    @user_skill = UserSkill.new
  end

  # POST /user_skills or /user_skills.json
  def create
    @user_skill = UserSkill.new(user_skill_params)

    if @user_skill.save
      redirect_to user_skills_url, notice: "User skill was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE /user_skills/1 or /user_skills/1.json
  def destroy
    @user_skill.destroy

    respond_to do |format|
      format.html { redirect_to user_skills_url, notice: "User skill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_skill
      @user_skill = UserSkill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_skill_params
      params.require(:user_skill).permit(:user_id, :skill_id)
    end
end
