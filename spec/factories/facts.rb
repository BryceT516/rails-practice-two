FactoryBot.define do
  factory :fact do
    user { nil }
    fact { "MyString" }
    likes { 1 }
  end
end
