FactoryBot.define do
  factory :user do
    name { Faker::Internet.safe_email }
    email { name }
  end
end
