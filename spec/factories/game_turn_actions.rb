FactoryBot.define do
  factory :game_turn_action do
    game_turn
    phase_number { 0 }
    resource_object
    action_type { "move" }
    start_position_x { 1 }
    start_position_y { 1 }
    end_position_x { 1 }
    end_position_y { 1 }
    start_orientation { 0 }
    end_orientation { 0 }
    start_momentum_north { 0 }
    start_momentum_east { 0 }
    start_momentum_south { 0 }
    start_momentum_west { 0 }
    start_momentum_clockwise { 0 }
    start_momentum_counter_clockwise { 0 }
    end_momentum_north { 0 }
    end_momentum_east { 0 }
    end_momentum_south { 0 }
    end_momentum_west { 0 }
    end_momentum_clockwise { 0 }
    end_momentum_counter_clockwise { 0 }
    start_movement_north { 0 }
    start_movement_east { 0 }
    start_movement_south { 0 }
    start_movement_west { 0 }
    start_movement_clockwise { 0 }
    start_movement_counter_clockwise { 0 }
    end_movement_north { 0 }
    end_movement_east { 0 }
    end_movement_south { 0 }
    end_movement_west { 0 }
    end_movement_clockwise { 0 }
    end_movement_counter_clockwise { 0 }
  end
end
