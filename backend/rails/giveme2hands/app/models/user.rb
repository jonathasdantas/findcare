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
  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
end
