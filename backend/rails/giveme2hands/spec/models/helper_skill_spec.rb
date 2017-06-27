# == Schema Information
#
# Table name: helper_skills
#
#  id         :integer          not null, primary key
#  helper_id  :integer          not null
#  skill_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe HelperSkill, type: :model do
  it { should belong_to(:helper) }
  it { should belong_to(:skill) }
end
