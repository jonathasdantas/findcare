# == Schema Information
#
# Table name: experiences
#
#  id         :integer          not null, primary key
#  range      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Experience, type: :model do
  it { should validate_presence_of(:range) }
end
