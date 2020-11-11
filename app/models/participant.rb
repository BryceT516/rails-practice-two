class Participant < ApplicationRecord
  belongs_to :game
  belongs_to :user
  
  has_one :ship, class_name: 'ResourceObject', foreign_key: 'resource_object_id'
  
  
end
