# == Schema Information
#
# Table name: skills
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  skill_group_id :integer
#  experience_id  :integer
#  specific       :boolean
#  extra          :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Skill < ApplicationRecord
  belongs_to :skill_group
  belongs_to :experience

  validates :name, presence: true
end
