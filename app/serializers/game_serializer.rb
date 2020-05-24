class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :status, :created_at
  belongs_to :owner
  has_many :players
end
