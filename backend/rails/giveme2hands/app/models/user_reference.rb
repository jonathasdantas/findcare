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

class UserReference < ApplicationRecord
  belongs_to :user

  validates :text, presence: true
end
