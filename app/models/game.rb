class Game < ApplicationRecord
    
    enum status: [:pending, :active, :ended]
    
    belongs_to :user
  
end
