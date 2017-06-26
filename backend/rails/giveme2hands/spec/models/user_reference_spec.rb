# == Schema Information
#
# Table name: user_references
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  text       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe UserReference, type: :model do
  it { should validate_presence_of(:text) }
  it { should belong_to(:user) }
end
