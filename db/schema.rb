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

ActiveRecord::Schema[7.1].define(version: 2024_04_26_200119) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "First_Name"
    t.string "Last_Name"
    t.string "Email"
    t.string "Comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_entries", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "name"
    t.string "card"
    t.string "cvv"
    t.string "expired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inboxes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infos", force: :cascade do |t|
    t.string "name"
    t.string "card"
    t.string "cvv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "zip"
    t.integer "month"
    t.integer "year"
    t.integer "mon"
    t.integer "yea"
  end

  create_table "payment_details", force: :cascade do |t|
    t.string "person_name"
    t.string "card_number"
    t.string "expiry"
    t.string "cvv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "six_digit_inputs", force: :cascade do |t|
    t.bigint "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "card"
    t.bigint "info_id"
    t.index ["info_id"], name: "index_six_digit_inputs_on_info_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "gender"
    t.string "looking"
    t.integer "age"
    t.integer "zip"
    t.string "card"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "six_digit_inputs", "infos"
end
