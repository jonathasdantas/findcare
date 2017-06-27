# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  begin      :datetime
#  end        :datetime
#  user_id    :integer
#  helper_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Schedule, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:helper) }

  it { should validate_presence_of(:begin) }
  it { should validate_presence_of(:end) }
end
