# == Schema Information
#
# Table name: experiences
#
#  id         :integer          not null, primary key
#  range      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Experience < ApplicationRecord
  validates :range, presence: true
end
