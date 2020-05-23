class Api::V1::GamesController < ApplicationController
  def index
    games = Game.all
    render json: games
  end

  def create
    new_game_params = game_params
    game = @user.games.create(new_game_params)
    render json: game
  end
  
  private
  
  def game_params
    @game_params ||= {
      "title": "Game #{Game.count + 1}",
      "status": 0,
      "user_id": @user.id
    }
  end
end