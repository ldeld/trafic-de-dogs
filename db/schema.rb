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


ActiveRecord::Schema.define(version: 20171201115306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sitter_id"], name: "index_availabilities_on_sitter_id", using: :btree
  end

  create_table "book_dogs", force: :cascade do |t|
    t.integer  "dog_id"
    t.integer  "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_book_dogs_on_booking_id", using: :btree
    t.index ["dog_id"], name: "index_book_dogs_on_dog_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "date"
    t.string   "status"
    t.index ["owner_id"], name: "index_bookings_on_owner_id", using: :btree
    t.index ["sitter_id"], name: "index_bookings_on_sitter_id", using: :btree
  end

  create_table "dogs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "age"
    t.string   "vaccines"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
    t.string   "breed"
    t.string   "photo"
    t.index ["user_id"], name: "index_dogs_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "accomodation"
    t.string   "description"
    t.string   "type"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "photo"
    t.string   "photo_card"
    t.string   "city"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "availabilities", "users", column: "sitter_id"
  add_foreign_key "book_dogs", "bookings"
  add_foreign_key "book_dogs", "dogs"
  add_foreign_key "dogs", "users"
end
