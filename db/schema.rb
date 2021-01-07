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

ActiveRecord::Schema.define(version: 2021_01_07_210000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: :cascade do |t|
    t.bigint "user_id"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["provider", "uid"], name: "index_authorizations_on_provider_and_uid"
    t.index ["user_id"], name: "index_authorizations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.integer "role_id"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "birth_date"
    t.string "position"
    t.string "company"
    t.string "avatar"
    t.integer "sex_id"
    t.integer "partner_sex_id"
    t.integer "country_id"
    t.integer "city_id"
    t.integer "university_id"
    t.string "description"
    t.string "last_lon"
    t.string "last_lat"
    t.boolean "sound"
    t.datetime "last_activity"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.string "provider"
    t.string "token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "authorizations", "users"
end
