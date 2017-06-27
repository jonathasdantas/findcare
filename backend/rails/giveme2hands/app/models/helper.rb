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

class Helper < ApplicationRecord
  belongs_to :user

  has_many :schedules
  has_many :users_scheduled, class_name: "User", through: :schedules

  has_many :helper_skills
  has_many :skills, -> { where specific: false, extra: false }, through: :helper_skills
  has_many :specific_skills, -> { where specific: true }, class_name: "Skill", through: :helper_skills
  has_many :extra_skills, -> { where extra: true }, class_name: "Skill", through: :helper_skills

  has_many :helper_qualifications
  has_many :qualifications, through: :helper_qualifications

  has_many :helper_languages
  has_many :languages, through: :helper_languages

  validates :aboutme, presence: true
  validates :objectives, presence: true
  validates :phone, presence: true
  validates :education_level_id, presence: true
  validates :education_field_id, presence: true
  validates :education_place, presence: true
  validates :avaliability_id, presence: true
end
