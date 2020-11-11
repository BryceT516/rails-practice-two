class GameTurnParticipantAction < ApplicationRecord
  belongs_to :game_turn
  belongs_to :participant
end
