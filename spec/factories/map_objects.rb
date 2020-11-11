FactoryBot.define do
  factory :map_object do
    map
    resource_object
    width { 1 }
    height { 1 }
    map_position_x { 1 }
    map_position_y { 1 }
    momentum_north { 0 }
    momentum_east { 0 }
    momentum_south { 0 }
    momentum_west { 0 }
    momentum_clockwise { 0 }
    momentum_counter_clockwise { 0 }
  end
end
