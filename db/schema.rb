# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_13_024513) do

  create_table "game_maps", force: :cascade do |t|
    t.string "name"
    t.integer "map_type", default: 0
    t.integer "width"
    t.integer "height"
    t.integer "size", default: 0
    t.integer "user_id", null: false
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"type\"", name: "index_game_maps_on_type"
    t.index "\"user\"", name: "index_game_maps_on_user"
    t.index ["size"], name: "index_game_maps_on_size"
    t.index ["user_id"], name: "index_game_maps_on_user_id"
  end

  create_table "game_objects", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "resource_object_id", null: false
    t.boolean "solid", default: true
    t.integer "width"
    t.integer "height"
    t.integer "map_position_x"
    t.integer "map_position_y"
    t.integer "orientation", default: 0
    t.integer "momentum_north"
    t.integer "momentum_east"
    t.integer "momentum_south"
    t.integer "momentum_west"
    t.integer "momentum_clockwise"
    t.integer "momentum_counter_clockwise"
    t.integer "movement_north"
    t.integer "movement_east"
    t.integer "movement_south"
    t.integer "movement_west"
    t.integer "movement_clockwise"
    t.integer "movement_counter_clockwise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_objects_on_game_id"
    t.index ["resource_object_id"], name: "index_game_objects_on_resource_object_id"
  end

  create_table "game_turn_actions", force: :cascade do |t|
    t.integer "game_turn_id", null: false
    t.integer "phase_number"
    t.integer "chain_number"
    t.integer "game_object_id", null: false
    t.integer "action_type", default: 0
    t.integer "start_position_x"
    t.integer "start_position_y"
    t.integer "end_position_x"
    t.integer "end_position_y"
    t.integer "start_orientation", default: 0
    t.integer "end_orientation", default: 0
    t.integer "start_momentum_north"
    t.integer "start_momentum_east"
    t.integer "start_momentum_south"
    t.integer "start_momentum_west"
    t.integer "start_momentum_clockwise"
    t.integer "start_momentum_counter_clockwise"
    t.integer "end_momentum_north"
    t.integer "end_momentum_east"
    t.integer "end_momentum_south"
    t.integer "end_momentum_west"
    t.integer "end_momentum_clockwise"
    t.integer "end_momentum_counter_clockwise"
    t.integer "start_movement_north"
    t.integer "start_movement_east"
    t.integer "start_movement_south"
    t.integer "start_movement_west"
    t.integer "start_movement_clockwise"
    t.integer "start_movement_counter_clockwise"
    t.integer "end_movement_north"
    t.integer "end_movement_east"
    t.integer "end_movement_south"
    t.integer "end_movement_west"
    t.integer "end_movement_clockwise"
    t.integer "end_movement_counter_clockwise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_object_id"], name: "index_game_turn_actions_on_game_object_id"
    t.index ["game_turn_id"], name: "index_game_turn_actions_on_game_turn_id"
    t.index ["phase_number"], name: "index_game_turn_actions_on_phase_number"
  end

  create_table "game_turn_participant_actions", force: :cascade do |t|
    t.integer "game_turn_id", null: false
    t.integer "participant_id", null: false
    t.integer "accelerate_north"
    t.integer "accelerate_east"
    t.integer "accelerate_south"
    t.integer "accelerate_west"
    t.integer "accelerate_clockwise"
    t.integer "accelerate_counter_clockwise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_turn_id"], name: "index_game_turn_participant_actions_on_game_turn_id"
    t.index ["participant_id"], name: "index_game_turn_participant_actions_on_participant_id"
  end

  create_table "game_turns", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "turn_number"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_turns_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.text "title"
    t.integer "status", default: 0
    t.integer "user_id", null: false
    t.integer "game_type", default: 0
    t.integer "player_limit"
    t.integer "map_x"
    t.integer "map_y"
    t.integer "game_map_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_map_id"], name: "index_games_on_game_map_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "map_objects", force: :cascade do |t|
    t.integer "map_id", null: false
    t.integer "resource_object_id", null: false
    t.integer "movement_constraint", default: 0
    t.boolean "solid", default: true
    t.integer "width"
    t.integer "height"
    t.integer "map_position_x"
    t.integer "map_position_y"
    t.integer "orientation", default: 0
    t.integer "momentum_north"
    t.integer "momentum_east"
    t.integer "momentum_south"
    t.integer "momentum_west"
    t.integer "momentum_clockwise"
    t.integer "momentum_counter_clockwise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["map_id"], name: "index_map_objects_on_map_id"
    t.index ["resource_object_id"], name: "index_map_objects_on_resource_object_id"
  end

  create_table "participants", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "user_id", null: false
    t.integer "ship_id", null: false
    t.string "color_1"
    t.string "color_2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_participants_on_game_id"
    t.index ["ship_id"], name: "index_participants_on_ship_id"
    t.index ["user_id"], name: "index_participants_on_user_id"
  end

  create_table "resource_objects", force: :cascade do |t|
    t.string "name"
    t.integer "width"
    t.integer "height"
    t.string "image_resource"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "game_maps", "users"
  add_foreign_key "game_objects", "games"
  add_foreign_key "game_objects", "resource_objects"
  add_foreign_key "game_turn_actions", "game_objects"
  add_foreign_key "game_turn_actions", "game_turns"
  add_foreign_key "game_turn_participant_actions", "game_turns"
  add_foreign_key "game_turn_participant_actions", "participants"
  add_foreign_key "game_turns", "games"
  add_foreign_key "games", "users"
  add_foreign_key "map_objects", "maps"
  add_foreign_key "map_objects", "resource_objects"
  add_foreign_key "participants", "games"
  add_foreign_key "participants", "resource_object", column: "ship_id"
  add_foreign_key "participants", "users"
end
