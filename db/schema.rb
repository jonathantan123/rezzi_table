# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_24_151926) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "reservation_time"
    t.string "reservation_date"
    t.integer "party_size"
    t.integer "restaurant_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_reservations_on_restaurant_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.string "address"
    t.string "price_range"
    t.string "neighborhood"
    t.string "cuisine"
    t.string "image"
    t.index ["city_id"], name: "index_restaurants_on_city_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "description"
    t.integer "reservation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "food_rating"
    t.integer "decor_rating"
    t.integer "service_rating"
    t.index ["reservation_id"], name: "index_reviews_on_reservation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "reservations", "restaurants"
  add_foreign_key "reservations", "users"
  add_foreign_key "restaurants", "cities"
  add_foreign_key "reviews", "reservations"
end
