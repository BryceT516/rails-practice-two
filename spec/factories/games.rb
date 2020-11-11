FactoryBot.define do
  sequence :title do |n|
    "Generated Game Title #{n}"
  end

  factory :game do
    title
    status { "pending" }
    user
    created_at { Time.now }
  end
end
