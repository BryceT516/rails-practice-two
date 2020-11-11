class GameTurn < ApplicationRecord
  belongs_to :game
  has_many :game_turn_participant_actions
  has_many :game_turn_actions
  
  enum status: [ :pending, :active, :complete ]
  
  def initialize(game:)
    puts "In GameTurn initialize..."
    puts "game:"
    puts game.inspect
    
    if game.has_turns?
      puts "Game has turns..."
      # If previous turns...
    else
      puts "Game has no turns..."
      puts game.participants.inspect
      
      # If no previous turns...
      # Get the list of participants from the game
      # Determine the starting position for each
      # Create participant records for each
      game.players.each do |player|
        puts "player loop..."
        puts player.inspect

      end
      # get the list of objects from the game map
      # create game_object records for each
      
      create()
    end
  end
end
