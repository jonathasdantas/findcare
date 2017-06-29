FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    password_digest Faker::Internet.password
    date_of_birth Faker::Date.birthday(18, 65)
  end
end