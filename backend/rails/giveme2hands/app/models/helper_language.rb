# == Schema Information
#
# Table name: helper_languages
#
#  id          :integer          not null, primary key
#  helper_id   :integer          not null
#  language_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class HelperLanguage < ApplicationRecord
  belongs_to :helper
  belongs_to :language
end
