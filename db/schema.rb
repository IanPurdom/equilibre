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

ActiveRecord::Schema.define(version: 2019_07_16_140459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_accounts", force: :cascade do |t|
    t.bigint "profil_id"
    t.string "title"
    t.string "account_number"
    t.string "bank_name"
    t.string "address"
    t.string "zip_code"
    t.string "city"
    t.date "opening_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profil_id"], name: "index_bank_accounts_on_profil_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "election_id"
    t.bigint "candidate_id"
    t.bigint "agent_id"
    t.decimal "result"
    t.decimal "result_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_campaigns_on_agent_id"
    t.index ["candidate_id"], name: "index_campaigns_on_candidate_id"
    t.index ["election_id"], name: "index_campaigns_on_election_id"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "elections", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.date "date"
    t.date "date_2"
    t.boolean "list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profils", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "zip_code"
    t.string "city"
    t.string "profession"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bank_accounts", "profils"
  add_foreign_key "campaigns", "elections"
  add_foreign_key "campaigns", "users"
end
