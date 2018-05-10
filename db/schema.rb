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

ActiveRecord::Schema.define(version: 20180510075106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "date_from"
    t.date "date_to"
    t.bigint "user_id"
    t.bigint "storage_facility_id"
    t.bigint "facility_spaces_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_spaces_id"], name: "index_bookings_on_facility_spaces_id"
    t.index ["storage_facility_id"], name: "index_bookings_on_storage_facility_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "facility_spaces", force: :cascade do |t|
    t.text "height"
    t.text "width"
    t.text "length"
    t.decimal "rate"
    t.text "image_data"
    t.bigint "storage_facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storage_facility_id"], name: "index_facility_spaces_on_storage_facility_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.date "payment_date"
    t.decimal "charge"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "mobile"
    t.text "street_address"
    t.text "suburb"
    t.text "postcode"
    t.text "country"
    t.text "image_data"
    t.decimal "latitude"
    t.decimal "longitude"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "storage_facilities", force: :cascade do |t|
    t.text "street_address"
    t.text "suburb"
    t.text "postcode"
    t.text "state"
    t.text "country"
    t.datetime "unlisted_at"
    t.decimal "longitude"
    t.decimal "latitude"
    t.text "image_data"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_storage_facilities_on_user_id"
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

  add_foreign_key "bookings", "facility_spaces", column: "facility_spaces_id"
  add_foreign_key "bookings", "storage_facilities"
  add_foreign_key "bookings", "users"
  add_foreign_key "facility_spaces", "storage_facilities"
  add_foreign_key "invoices", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "storage_facilities", "users"
end
