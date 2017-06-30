# == Schema Information
#
# Table name: qualifications
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Qualification, type: :model do
  it { should validate_presence_of(:name) }
end
