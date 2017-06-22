# == Schema Information
#
# Table name: avaliabilities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Avaliability < ApplicationRecord
  validates :name, presence: true
end
