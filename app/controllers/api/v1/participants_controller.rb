class Api::V1::ParticipantsController < ApplicationController
  
  def index
  end

  def create
    game = Game.find(params[:game_id])
    user = User.find(params[:user_id])
    
    if game && user
      game.join(user)
      render json: game
    end
  end
  
  private
  
end