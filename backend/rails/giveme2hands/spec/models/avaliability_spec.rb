# == Schema Information
#
# Table name: avaliabilities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Avaliability, type: :model do
  it { should validate_presence_of(:name) }
end
