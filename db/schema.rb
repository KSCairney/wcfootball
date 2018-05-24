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

ActiveRecord::Schema.define(version: 20180524180317) do

  create_table "picks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.integer  "gp"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "a16f"
    t.string   "a16s"
    t.string   "b16f"
    t.string   "b16s"
    t.string   "c16f"
    t.string   "c16s"
    t.string   "d16f"
    t.string   "d16s"
    t.string   "e16f"
    t.string   "e16s"
    t.string   "f16f"
    t.string   "f16s"
    t.string   "g16f"
    t.string   "g16s"
    t.string   "h16f"
    t.string   "h16s"
    t.string   "qf1"
    t.string   "qf2"
    t.string   "qf3"
    t.string   "qf4"
    t.string   "qf5"
    t.string   "qf6"
    t.string   "qf7"
    t.string   "qf8"
    t.string   "sf1"
    t.string   "sf2"
    t.string   "sf3"
    t.string   "sf4"
    t.string   "final1"
    t.string   "final2"
    t.string   "champ"
    t.integer  "arussia"
    t.integer  "asaudiarabia"
    t.integer  "aegypt"
    t.integer  "auruguay"
    t.integer  "bmorocco"
    t.integer  "biran"
    t.integer  "bportugal"
    t.integer  "bspain"
    t.integer  "cfrance"
    t.integer  "caustralia"
    t.integer  "cperu"
    t.integer  "cdenmark"
    t.integer  "dargentina"
    t.integer  "diceland"
    t.integer  "dcroatia"
    t.integer  "dnigeria"
    t.integer  "ecostarica"
    t.integer  "eserbia"
    t.integer  "ebrazil"
    t.integer  "eswitzerland"
    t.integer  "fgermany"
    t.integer  "fmexico"
    t.integer  "fsweden"
    t.integer  "fsouthkorea"
    t.integer  "gbelgium"
    t.integer  "gpanama"
    t.integer  "gtunisia"
    t.integer  "gengland"
    t.integer  "hcolombia"
    t.integer  "hjapan"
    t.integer  "hpoland"
    t.integer  "hsenegal"
  end

  add_index "picks", ["team_id"], name: "index_picks_on_team_id"
  add_index "picks", ["user_id"], name: "index_picks_on_user_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "group_number"
    t.string   "flag"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
