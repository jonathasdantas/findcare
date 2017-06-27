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

require 'rails_helper'

RSpec.describe HelperLanguage, type: :model do
  it { should belong_to(:helper) }
  it { should belong_to(:language) }
end
