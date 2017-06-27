# == Schema Information
#
# Table name: education_fields
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe EducationField, type: :model do
  it { validate_presence_of(:name) }
end
