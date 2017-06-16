# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170616040401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Games_Players", id: false, force: :cascade do |t|
    t.bigint "Player_id", null: false
    t.bigint "Game_id", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "first_player"
    t.integer "second_player"
    t.datetime "created"
    t.string "game_status"
    t.string "game_type"
    t.string "first_player_piece_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moves", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "game_id"
    t.string "board_row"
    t.string "board_column"
    t.string "boardmatrix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_moves_on_game_id"
    t.index ["player_id"], name: "index_moves_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "user_name"
    t.string "password_hash"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "moves", "games"
  add_foreign_key "moves", "players"
end
