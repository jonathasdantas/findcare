class Helper < ApplicationRecord
  validates :aboutme, presence: true
  validates :objectives, presence: true
  validates :phone, presence: true
  validates :education_level_id, presence: true
  validates :education_field_id, presence: true
  validates :education_place, presence: true
  validates :avaliability, presence: true
end
