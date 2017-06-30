# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)      not null
#  email           :string(513)      not null
#  active          :boolean          default(FALSE)
#  token           :string(255)
#  password_digest :string(255)      not null
#  blocked         :boolean          default(FALSE)
#  admin           :boolean          default(FALSE)
#  views           :integer          default(0)
#  date_of_birth   :date
#  suspended_at    :datetime
#  suspended_till  :datetime
#  first_seen_at   :datetime
#  last_seen_at    :datetime
#  last_emailed_at :datetime
#  locale          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  has_many :user_reviews
  has_many :user_references

  has_many :schedules
  has_many :helpers_scheduled, class_name: "Helper", through: :schedules

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
