FactoryBot.define do
  factory :game do
    title { "Game Title" }
    status { "new" }
    user
    created_at { Time.now }
  end
end
