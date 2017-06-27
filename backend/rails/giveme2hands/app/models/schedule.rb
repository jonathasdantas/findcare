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

class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :helper

  validates :begin, presence: true
  validates :end, presence: true
end
