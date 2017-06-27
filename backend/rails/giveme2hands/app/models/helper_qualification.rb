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

class HelperQualification < ApplicationRecord
  belongs_to :helper
  belongs_to :qualification
end
