# == Schema Information
#
# Table name: qualifications
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  issue_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Qualification < ApplicationRecord
  validates :name, presence: true
  validates :issue_date, presence: true
end
