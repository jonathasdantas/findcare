# == Schema Information
#
# Table name: user_reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  rating     :decimal(10, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserReview < ApplicationRecord
  belongs_to :user

  validates :rating, presence: true
end
