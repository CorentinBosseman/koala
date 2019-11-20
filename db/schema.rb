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

ActiveRecord::Schema.define(version: 2019_11_20_140550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challengers", force: :cascade do |t|
    t.string "status"
    t.bigint "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_challenge_id"
    t.index ["friend_id"], name: "index_challengers_on_friend_id"
    t.index ["user_challenge_id"], name: "index_challengers_on_user_challenge_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.string "picture"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.string "status"
    t.bigint "user_id"
    t.bigint "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "category"
    t.string "picture"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.integer "position"
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_tasks_on_program_id"
  end

  create_table "user_challenges", force: :cascade do |t|
    t.integer "duration"
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_user_challenges_on_challenge_id"
    t.index ["user_id"], name: "index_user_challenges_on_user_id"
  end

  create_table "user_programs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "completed", default: false
    t.index ["program_id"], name: "index_user_programs_on_program_id"
    t.index ["user_id"], name: "index_user_programs_on_user_id"
  end

  create_table "user_tasks", force: :cascade do |t|
    t.bigint "task_id"
    t.bigint "user_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "completed", default: false
    t.index ["task_id"], name: "index_user_tasks_on_task_id"
    t.index ["user_program_id"], name: "index_user_tasks_on_user_program_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pseudo"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "challengers", "user_challenges"
  add_foreign_key "challengers", "users", column: "friend_id"
  add_foreign_key "friendships", "users"
  add_foreign_key "friendships", "users", column: "friend_id"
  add_foreign_key "tasks", "programs"
  add_foreign_key "user_challenges", "challenges"
  add_foreign_key "user_challenges", "users"
  add_foreign_key "user_programs", "programs"
  add_foreign_key "user_programs", "users"
  add_foreign_key "user_tasks", "tasks"
  add_foreign_key "user_tasks", "user_programs"
end
