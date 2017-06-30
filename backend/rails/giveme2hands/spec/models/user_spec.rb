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

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:user_reviews) }
  it { should have_many(:user_references) }

  it { should have_many(:schedules) }
  it { should have_many(:helpers_scheduled).through(:schedules) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }

  it "validates uniqueness of email" do
    FactoryGirl.create(:user, email: Faker::Internet.email)
    should validate_uniqueness_of(:email)
  end

  it { should validate_presence_of(:password_digest) }
end
