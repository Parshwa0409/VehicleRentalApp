# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_14_152744) do
  create_table "payments", force: :cascade do |t|
    t.string "cardholder_name"
    t.string "card_number"
    t.date "expiry_date"
    t.integer "cvv"
    t.integer "rental_agreement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_agreement_id"], name: "index_payments_on_rental_agreement_id"
  end

  create_table "rental_agreements", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "total_cost"
    t.boolean "active", default: false
    t.integer "user_id"
    t.integer "vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rental_agreements_on_user_id"
    t.index ["vehicle_id"], name: "index_rental_agreements_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "phone_no"
    t.string "email"
    t.string "password_digest"
    t.boolean "has_rented", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.integer "year"
    t.integer "price_per_day"
    t.string "img_url", default: "https://images.unsplash.com/photo-1637063868743-71757b4770c3?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    t.boolean "is_rented", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "payments", "rental_agreements"
  add_foreign_key "rental_agreements", "users"
  add_foreign_key "rental_agreements", "vehicles"
end
