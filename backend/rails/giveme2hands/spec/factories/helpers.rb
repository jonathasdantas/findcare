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

FactoryGirl.define do
  factory :helper do
    aboutme Faker::Lorem.paragraphs
    objectives Faker::Lorem.paragraphs
    education_level_id { Faker::Number.between(1, 5) }
    education_field_id { Faker::Number.between(1, 5) }
    education_place Faker::Company.name
    avaliability_id { Faker::Number.between(1, 5) }
  end
end
