# == Schema Information
#
# Table name: skills
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  skill_group_id :integer
#  specific       :boolean
#  extra          :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Skill, type: :model do
  it { should belong_to(:skill_group) }

  it { should validate_presence_of(:name) }
end
