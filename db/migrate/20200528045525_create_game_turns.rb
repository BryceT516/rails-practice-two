class CreateGameTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :game_turns do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :turn_number
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
