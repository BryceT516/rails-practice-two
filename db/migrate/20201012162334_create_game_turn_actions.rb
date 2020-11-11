class CreateGameTurnActions < ActiveRecord::Migration[6.0]
  def change
    create_table :game_turn_actions do |t|
      t.references :game_turn, null: false, foreign_key: true
      t.integer :phase_number
      t.integer :chain_number
      t.references :game_object, null: false, foreign_key: true
      t.integer :action_type, default:0
      t.integer :start_position_x
      t.integer :start_position_y
      t.integer :end_position_x
      t.integer :end_position_y
      t.integer :start_orientation, default:0
      t.integer :end_orientation, default:0
      t.integer :start_momentum_north
      t.integer :start_momentum_east
      t.integer :start_momentum_south
      t.integer :start_momentum_west
      t.integer :start_momentum_clockwise
      t.integer :start_momentum_counter_clockwise
      t.integer :end_momentum_north
      t.integer :end_momentum_east
      t.integer :end_momentum_south
      t.integer :end_momentum_west
      t.integer :end_momentum_clockwise
      t.integer :end_momentum_counter_clockwise
      t.integer :start_movement_north
      t.integer :start_movement_east
      t.integer :start_movement_south
      t.integer :start_movement_west
      t.integer :start_movement_clockwise
      t.integer :start_movement_counter_clockwise
      t.integer :end_movement_north
      t.integer :end_movement_east
      t.integer :end_movement_south
      t.integer :end_movement_west
      t.integer :end_movement_clockwise
      t.integer :end_movement_counter_clockwise

      t.timestamps
    end
    add_index :game_turn_actions, :phase_number
  end
end
