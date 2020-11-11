class CreateMapObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :map_objects do |t|
      t.references :map, null: false, foreign_key: true
      t.references :resource_object, null: false, foreign_key: true
      t.integer :movement_constraint, default: 0
      t.boolean :solid, default: true
      t.integer :width
      t.integer :height
      t.integer :map_position_x
      t.integer :map_position_y
      t.integer :orientation, default: 0
      t.integer :momentum_north
      t.integer :momentum_east
      t.integer :momentum_south
      t.integer :momentum_west
      t.integer :momentum_clockwise
      t.integer :momentum_counter_clockwise

      t.timestamps
    end
  end
end
