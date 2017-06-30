# == Schema Information
#
# Table name: qualifications
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Qualification < ApplicationRecord
  validates :name, presence: true
end
