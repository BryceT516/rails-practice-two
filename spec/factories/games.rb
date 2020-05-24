FactoryBot.define do
  factory :game do
    title { "Game Title" }
    status { "pending" }
    user
    created_at { Time.now }
  end
end
