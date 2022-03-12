class User < ApplicationRecord
  has_many :user_skills
  has_many :skills, through: :user_skills

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def hasSkill(skill_id)
    puts "SKiiiiiiiiiil #{skill_id}"
    hasSkill = false
    self.user_skills.each do |user_skill|
      if user_skill.skill_id == skill_id.to_i
        hasSkill = true
      end
    end
    hasSkill
  end

end
