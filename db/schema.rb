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

ActiveRecord::Schema.define(version: 20180310102625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "blood_types", force: :cascade do |t|
    t.string "blood_group_rh_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "license_number"
    t.string "qualification"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "specialty_id"
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
    t.index ["user_id"], name: "index_doctors_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "blood_types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blood_types_id"], name: "index_patients_on_blood_types_id"
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.text "prev_diagnosis"
    t.text "prev_medication"
    t.text "ongoing_medication"
    t.integer "pulse_rate"
    t.float "body_temperature"
    t.integer "respiratory_rate"
    t.integer "bp_systolic"
    t.integer "bp_diastolic"
    t.integer "blood_oxygen_saturation"
    t.integer "blood_sugar_pp"
    t.integer "blood_sugar_fasting"
    t.integer "height"
    t.float "weight"
    t.float "bmi"
    t.date "test_date"
    t.text "recommendation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "contact"
    t.string "username"
    t.string "province"
    t.string "city_village"
    t.string "address_line_1"
    t.bigint "role_id"
    t.string "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "admins", "users"
  add_foreign_key "doctors", "specialties"
  add_foreign_key "doctors", "users"
  add_foreign_key "patients", "blood_types", column: "blood_types_id"
  add_foreign_key "patients", "users"
  add_foreign_key "users", "roles"
end
