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

ActiveRecord::Schema[7.1].define(version: 2024_04_08_082224) do
  create_table "discos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name"
    t.integer "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_divisions_on_region_id"
  end

  create_table "meters", force: :cascade do |t|
    t.string "new_meter_number", null: false
    t.string "reference_no", null: false
    t.string "status"
    t.string "older_meter_no"
    t.integer "old_meter_reading"
    t.integer "new_meter_reading"
    t.string "connection_type"
    t.datetime "bill_month"
    t.float "longitude"
    t.float "latitude"
    t.integer "sub_division_id", null: false
    t.string "meter_type"
    t.float "kwh_mf"
    t.float "sanction_load"
    t.string "full_name"
    t.text "address"
    t.boolean "qc_check", default: false
    t.string "application_no"
    t.string "green_meter"
    t.string "telco"
    t.string "sim_no"
    t.string "signal_strength"
    t.string "picture_upload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_division_id"], name: "index_meters_on_sub_division_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.integer "disco_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disco_id"], name: "index_regions_on_disco_id"
  end

  create_table "sub_divisions", force: :cascade do |t|
    t.string "name"
    t.integer "division_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["division_id"], name: "index_sub_divisions_on_division_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "user_name", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "divisions", "regions"
  add_foreign_key "meters", "sub_divisions"
  add_foreign_key "regions", "discos"
  add_foreign_key "sub_divisions", "divisions"
end
