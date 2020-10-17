ActiveRecord::Schema.define(version: 2020_10_16_102000) do

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
    t.index ["user_id"], name: "index_adjustments_on_user_id"
  end

  create_table "damages", force: :cascade do |t|
    t.bigint "adjustment_id"
    t.string "answer"
    t.text "reason"
    t.integer "cost"
    t.integer "cost_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adjustment_id"], name: "index_damages_on_adjustment_id"
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
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "adjustments", "users"
  add_foreign_key "damages", "adjustments"
  add_foreign_key "transactions", "users"
end
