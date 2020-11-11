class MapObject < ApplicationRecord
  belongs_to :map
  belongs_to :game_object
  
  enum movement_constraint: [ :none, :immobile, :x_only, :y_only ]
  enum orientation: [ :north, :east, :south, :west ]
  
  
end
