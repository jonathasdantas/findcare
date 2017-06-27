# == Schema Information
#
# Table name: user_reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  rating     :decimal(2, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe UserReview, type: :model do
  it { should validate_presence_of(:rating) }
  it { should belong_to(:user) }
end
