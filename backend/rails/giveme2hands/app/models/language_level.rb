# == Schema Information
#
# Table name: language_levels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LanguageLevel < ApplicationRecord
  validates :name, presence: true
end
