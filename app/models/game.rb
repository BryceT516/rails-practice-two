class Game < ApplicationRecord
    
    enum status: [ :pending, :locked, :active, :ended ]
    enum game_type: [ :rally, :race ]
    
    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
    has_many :participants
    has_many :players, through: :participants, source: :user
    has_many :game_turns
    
    def join(player)
       participants.create(user: player) 
    end
    
    def generate_game_turn()
        game_turns.create(game: self)
        game_turns
    end
    
    def has_turns?
        game_turns.count > 0
    end
end
