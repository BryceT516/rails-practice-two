class GameObject < ApplicationRecord
  belongs_to :game
  belongs_to :game_object
  
  enum orientation: [ :north, :east, :south, :west ]
  
  
end
