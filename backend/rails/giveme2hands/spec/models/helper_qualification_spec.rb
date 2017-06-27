# == Schema Information
#
# Table name: helper_qualifications
#
#  id               :integer          not null, primary key
#  helper_id        :integer          not null
#  qualification_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe HelperQualification, type: :model do
  it { should belong_to(:helper) }
  it { should belong_to(:qualification) }
end
