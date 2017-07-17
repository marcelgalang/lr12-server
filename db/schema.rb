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

ActiveRecord::Schema.define(version: 20170717153637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "left_bs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "duration"
    t.datetime "startTime"
    t.datetime "endTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_left_bs_on_user_id", using: :btree
  end

  create_table "one_diapers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_one_diapers_on_user_id", using: :btree
  end

  create_table "right_bs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "duration"
    t.datetime "startTime"
    t.datetime "endTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_right_bs_on_user_id", using: :btree
  end

  create_table "two_diapers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_two_diapers_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "left_bs", "users"
  add_foreign_key "one_diapers", "users"
  add_foreign_key "right_bs", "users"
  add_foreign_key "two_diapers", "users"
end
