class Game < ApplicationRecord
    
    enum status: [:pending, :active, :ended]
    
    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
    has_many :participants
    has_many :players, through: :participants, source: :user
    
    def join(player)
       participants.create(user: player) 
    end
end
