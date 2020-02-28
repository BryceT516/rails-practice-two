FactoryBot.define do
  factory :fact do
    user { nil }
    fact { "MyString" }
    likes { 0 }
  end
end
