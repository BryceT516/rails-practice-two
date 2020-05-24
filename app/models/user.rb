class User < ApplicationRecord
  has_many :owned_games, class_name: "Game"
  has_many :participants
  has_many :participations, through: :participants, source: :game
  
  def createGame(game_params)
    owned_games.create(game_params)
  end
end
