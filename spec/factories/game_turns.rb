FactoryBot.define do
  sequence :turn_number do |n|
    n
  end
  
  factory :game_detail do
    game
    turn_number
  end
end
