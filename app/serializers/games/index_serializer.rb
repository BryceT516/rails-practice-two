class Games::IndexSerializer < GameSerializer
  puts "In games index serializer..."
  has_one :user
end