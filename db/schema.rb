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

ActiveRecord::Schema.define(version: 20190526152641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.bigint "player_id"
    t.datetime "now", default: "2030-05-13 07:00:00"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_calendars_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "user_id"
    t.string "firstname"
    t.string "lastname"
    t.integer "strength", default: 50
    t.integer "agility", default: 50
    t.integer "will", default: 100
    t.integer "charisma", default: 50
    t.integer "intelligence", default: 50
    t.integer "hunger", default: 100
    t.integer "thirst", default: 100
    t.integer "energy", default: 100
    t.integer "hygiene", default: 100
    t.integer "arousal", default: 0
    t.integer "feminity", default: 0
    t.integer "money", default: 300
    t.integer "bank_account_balance", default: 0
    t.integer "eyes_color"
    t.integer "hair_color"
    t.integer "hair_length"
    t.integer "lips_size", default: 0
    t.integer "breast_size", default: 0
    t.integer "ass_size", default: 0
    t.integer "dick_size", default: 0
    t.boolean "chastity", default: false
    t.text "relations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "calendars", "players"
  add_foreign_key "players", "users"
end
