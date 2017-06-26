# == Schema Information
#
# Table name: skill_groups
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe SkillGroup, type: :model do
  it { should have_many(:skills) }
  it { should validate_presence_of(:name) }
end
