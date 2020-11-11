FactoryBot.define do
  factory :participant do
    game
    user
    ship { association :resource_object, name: "User #{user.id}'s ship" }
    color_1 { "blue" }
    color_2 { "orange" }
  end
end
