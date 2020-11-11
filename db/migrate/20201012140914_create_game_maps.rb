class CreateGameMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :game_maps do |t|
      t.string :name
      t.integer :map_type, default: 0
      t.integer :width
      t.integer :height
      t.integer :size, default: 0
      t.references :user, null: false, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
    
    add_index :game_maps, :user
    add_index :game_maps, :type
    add_index :game_maps, :size
  end
end
