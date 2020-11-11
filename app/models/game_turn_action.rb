class GameTurnAction < ApplicationRecord
  belongs_to :game_turn
  belongs_to :game_object
  
  enum action_type: [ :move, :collision ]
  enum start_orientation: [ :north, :east, :south, :west ]
  enum end_orientation: [ :north, :east, :south, :west ]
end
