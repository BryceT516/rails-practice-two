class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.text :title
      t.integer :status, default: 0
      t.references :user, null: false, foreign_key: true
      t.integer :game_type, default: 0
      t.integer :player_limit
      t.integer :map_x
      t.integer :map_y
      t.references :game_map
      
      
      t.timestamps
    end
  end
end
