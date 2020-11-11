class CreateGameTurnParticipantActions < ActiveRecord::Migration[6.0]
  def change
    create_table :game_turn_participant_actions do |t|
      t.references :game_turn, null: false, foreign_key: true
      t.references :participant, null: false, foreign_key: true
      t.integer :accelerate_north
      t.integer :accelerate_east
      t.integer :accelerate_south
      t.integer :accelerate_west
      t.integer :accelerate_clockwise
      t.integer :accelerate_counter_clockwise

      t.timestamps
    end
  end
end
