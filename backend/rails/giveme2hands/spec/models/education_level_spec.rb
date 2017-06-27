# == Schema Information
#
# Table name: education_levels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe EducationLevel, type: :model do
  it { validate_presence_of(:name) }
end
