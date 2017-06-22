# == Schema Information
#
# Table name: languages
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  language_level_id :integer
#  country           :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Language < ApplicationRecord
  belongs_to :language_level

  validates :name, presence: true
  validates :country, presence: true
end
