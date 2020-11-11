FactoryBot.define do
  sequence :map_name do |n|
    "generated map name #{n}"
  end
  
  factory :game_map do
    name { generate(:map_name) }
    type { "rally" }
    height { 400 }
    width { 400 }
    size { "extra_small" }
    user
    status { "new" }
  end
end
