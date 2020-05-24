class User < ApplicationRecord
  has_many :games
  
  def createGame(game_params)
    games.create(game_params)
  end
end
