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

ActiveRecord::Schema.define(version: 2020_10_25_025323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adjustments", force: :cascade do |t|
    t.bigint "user_id"
    t.string "item"
    t.integer "cost"
    t.text "category"
    t.integer "cost_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "damage_reason"
    t.integer "damage_cost"
    t.float "rent_quantity"
    t.float "my_quantity"
    t.string "unit"
    t.text "burden_reason"
    t.float "burden_percentage"
    t.integer "burden_cost"
    t.string "equipment_name"
    t.float "service_year"
    t.float "first_value"
    t.float "rent_year"
    t.float "de_burden_percentage"
    t.integer "degradation_cost"
    t.string "second"
    t.string "third"
    t.string "fourth"
    t.string "fifth"
    t.index ["user_id"], name: "index_adjustments_on_user_id"
  end

  create_table "datails", force: :cascade do |t|
    t.bigint "adjustment_id"
    t.text "item"
    t.integer "cost"
    t.text "category", default: "4.その他", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "damage_reason"
    t.integer "damage_cost"
    t.float "rent_quantity"
    t.float "my_quantity"
    t.string "unit"
    t.text "burden_reason"
    t.float "burden_percentage"
    t.integer "burden_cost"
    t.string "equipment_name"
    t.float "service_year"
    t.float "first_value"
    t.float "rent_year"
    t.float "de_burden_percentage"
    t.integer "degradation_cost"
    t.index ["adjustment_id"], name: "index_datails_on_adjustment_id"
  end

  create_table "samples", force: :cascade do |t|
    t.text "category"
    t.string "field"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "user_id"
    t.string "user_name"
    t.text "user_adress"
    t.string "account"
    t.time "contact_date"
    t.text "rent_adress"
    t.string "rent_name"
    t.integer "deposit_amount"
    t.time "return_date"
    t.text "destination"
    t.string "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "contacts_date"
    t.date "returns_date"
    t.date "make_date"
    t.integer "return_deposit"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "adjustments", "users"
  add_foreign_key "datails", "adjustments"
  add_foreign_key "transactions", "users"
end
