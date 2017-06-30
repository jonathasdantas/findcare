# == Schema Information
#
# Table name: helper_skills
#
#  id            :integer          not null, primary key
#  helper_id     :integer          not null
#  skill_id      :integer          not null
#  experience_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class HelperSkill < ApplicationRecord
  belongs_to :helper
  belongs_to :skill
  belongs_to :experience
end
