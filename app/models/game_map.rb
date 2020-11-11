class GameMap < ApplicationRecord
  belongs_to :user
  
  enum map_type: [ :rally, :race ]
  enum size: [ :extra_small, :small, :medium, :large, :extra_large ]
  enum status: [ :new, :validated, :approved ]
  
  
  
end
