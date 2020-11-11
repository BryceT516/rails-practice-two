FactoryBot.define do
  factory :game_object do
    game
    resource_object
    width { 1 }
    height { 1 }
    map_position_x { 1 }
    map_position_y { 1 }
    momentum_north { 1 }
    momentum_east { 1 }
    momentum_south { 0 }
    momentum_west { 0 }
    momentum_clockwise { 1 }
    momentum_counter_clockwise { 0 }
    movement_north { 0 }
    movement_east { 0 }
    movement_south { 0 }
    movement_west { 0 }
    movement_clockwise { 0 }
    movement_counter_clockwise { 0 }
  end
end
