class Api::V1::GameTurnsController < ApplicationController
  
  # GET game/:game_id/game_turns
  def index
    if game_info.nil?
      record_not_found
    end
    render json: game_turns
  end
  
  # GET game/:game_id/game_turn/
  # GET game/:game_id/game_turns/:id
  def show
    if game_info.nil?
      record_not_found
    end
  
    if game_turn_id.nil?
      render json: current_game_turn
    else
      if selected_game_turn(game_turn_id).nil?
        record_not_found
      else
        render json: selected_game_turn(game_turn_id)
      end
    end
  end
  
  private
  
  def game_id
    @game_id ||= params[:game_id]
  end
  
  def game_turn_id
    @game_turn_id ||= params[:id]
  end
  
  def current_game_turn
    @game_turn ||= game_info.game_turns.last
    
    if @game_turn.nil?
      @game_turn = game_info.generate_game_turn
    end
    @game_turn
  end

  def selected_game_turn(id)
    @selected_game_turn = game_info.game_turns.find(id)
  end
  
  def game_turns
    game_info.game_turns
  end
  
  def game_info
      @game_info ||= Game.find(game_id)
  end
  
  def record_not_found
    render plain: "404 Not Found", status: 404
  end
end
