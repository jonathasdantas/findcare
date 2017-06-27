# == Schema Information
#
# Table name: helpers
#
#  id                 :integer          not null, primary key
#  user_id            :integer          not null
#  aboutme            :string(255)      not null
#  objectives         :string(255)      not null
#  location           :string(255)
#  phone              :string(255)      not null
#  education_level_id :integer          not null
#  education_field_id :integer          not null
#  education_place    :string(255)      not null
#  avaliability_id    :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe Helper, type: :model do
  it { should belong_to(:user) }

  it { should have_many(:schedules) }
  it { should have_many(:users_scheduled).through(:schedules) }

  it { should have_many(:helper_skills) }
  it { should have_many(:skills).through(:helper_skills) }
  it { should have_many(:specific_skills).through(:helper_skills) }
  it { should have_many(:extra_skills).through(:helper_skills) }

  it { should have_many(:helper_qualifications) }
  it { should have_many(:qualifications).through(:helper_qualifications) }

  it { should have_many(:helper_languages) }
  it { should have_many(:languages).through(:helper_languages) }

  it { should validate_presence_of(:aboutme) }
  it { should validate_presence_of(:objectives) }
  it { should validate_presence_of(:phone) }
  it { should validate_presence_of(:education_level_id) }
  it { should validate_presence_of(:education_field_id) }
  it { should validate_presence_of(:education_place) }
  it { should validate_presence_of(:avaliability_id) }
end
