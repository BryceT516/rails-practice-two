FactoryBot.define do
  factory :game_turn_participant_action do
    game_turn
    participant
    accelerate_north { 0 }
    accelerate_east { 1 }
    accelerate_south { 0 }
    accelerate_west { 0 }
    accelerate_clockwise { 0 }
    accelerate_counter_clockwise { 0 }
  end
end
