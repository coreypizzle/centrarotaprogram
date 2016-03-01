# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160229193421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approvals", force: :cascade do |t|
    t.string   "week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "approved",   default: false
    t.string   "name02"
    t.string   "name03"
    t.string   "name04"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "role_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "username",               default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.string   "sunday"
    t.string   "mondayapp"
    t.string   "tuesdayapp"
    t.string   "wednesdayapp"
    t.string   "thursdayapp"
    t.string   "fridayapp"
    t.string   "saturdayapp"
    t.string   "sundayapp"
    t.boolean  "approved",               default: false
    t.string   "sundayap"
    t.string   "mondayap"
    t.string   "tuesdayap"
    t.string   "wednesdayap"
    t.string   "thursdayap"
    t.string   "fridayap"
    t.string   "saturdayap"
    t.string   "monday02"
    t.string   "tuesday02"
    t.string   "wednesday02"
    t.string   "thursday02"
    t.string   "friday02"
    t.string   "saturday02"
    t.string   "sunday02"
    t.string   "monday03"
    t.string   "tuesday03"
    t.string   "wednesday03"
    t.string   "thursday03"
    t.string   "friday03"
    t.string   "saturday03"
    t.string   "sunday03"
    t.string   "monday04"
    t.string   "tuesday04"
    t.string   "wednesday04"
    t.string   "thursday04"
    t.string   "friday04"
    t.string   "saturday04"
    t.string   "sunday04"
    t.string   "mondayap02"
    t.string   "tuesdayap02"
    t.string   "wednesdayap02"
    t.string   "thursdayap02"
    t.string   "fridayap02"
    t.string   "saturdayap02"
    t.string   "sundayap02"
    t.string   "mondayap03"
    t.string   "tuesdayap03"
    t.string   "wednesdayap03"
    t.string   "thursdayap03"
    t.string   "fridayap03"
    t.string   "saturdayap03"
    t.string   "sundayap03"
    t.string   "mondayap04"
    t.string   "tuesdayap04"
    t.string   "wednesdayap04"
    t.string   "thursdayap04"
    t.string   "fridayap04"
    t.string   "saturdayap04"
    t.string   "sundayap04"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "events", "users"
  add_foreign_key "users", "roles"
end
