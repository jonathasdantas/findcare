# == Schema Information
#
# Table name: education_levels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EducationLevel < ApplicationRecord
  validates :name, presence: true
end
