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

ActiveRecord::Schema.define(version: 20180124102800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nav"
    t.string "category_name1"
    t.string "category_name2"
    t.string "category_name3"
    t.string "category_name4"
    t.string "category_name5"
    t.string "category_name18"
    t.string "category_name6"
    t.string "category_name7"
    t.string "category_name8"
    t.string "category_name9"
    t.string "category_name10"
    t.string "category_name11"
    t.string "category_name12"
    t.string "category_name13"
    t.string "category_name14"
    t.string "category_name15"
    t.string "category_name16"
    t.string "category_name17"
    t.string "nav_bar_home"
    t.string "nav_bar_contact"
    t.string "nav_bar_about"
    t.string "nav_bar_blog"
    t.string "nav_bar_store"
    t.string "nav_bar_featured"
    t.string "facebook_link"
    t.string "rss_link"
    t.string "twitter_link"
    t.string "thirdrow1"
    t.string "thirdrow2"
    t.string "thirdrow3"
    t.text "ourinfo"
    t.text "aboutme"
    t.string "phone_number1"
    t.string "phone_number2"
    t.string "logo_link"
  end

  create_table "details", force: :cascade do |t|
    t.text "body"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "category1"
    t.string "category2"
    t.string "category3"
    t.string "category4"
    t.string "category5"
    t.string "category6"
    t.string "category7"
    t.string "category8"
    t.string "category9"
    t.string "category10"
    t.string "category11"
    t.string "category12"
    t.string "category13"
    t.string "category14"
    t.string "category15"
  end

  create_table "order_items", id: :serial, force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", id: :serial, force: :cascade do |t|
    t.float "subtotal"
    t.float "total"
    t.float "tax"
    t.float "shipping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", id: :serial, force: :cascade do |t|
    t.string "title"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "comment"
    t.string "content"
    t.text "body"
    t.string "category"
    t.string "category_name1"
    t.string "category_name2"
    t.string "category_name3"
    t.string "category_name4"
    t.string "category_name5"
    t.string "category_name18"
    t.string "category_name6"
    t.string "category_name7"
    t.string "category_name8"
    t.string "category_name9"
    t.string "category_name10"
    t.string "category_name11"
    t.string "category_name12"
    t.string "category_name13"
    t.string "category_name14"
    t.string "category_name15"
    t.string "category_name16"
    t.string "category_name17"
    t.string "nav_bar_home"
    t.string "nav_bar_contact"
    t.string "nav_bar_about"
    t.string "nav_bar_blog"
    t.string "nav_bar_store"
    t.string "nav_bar_featured"
    t.string "facebook_link"
    t.string "rss_link"
    t.string "twitter_link"
    t.string "thirdrow1"
    t.string "thirdrow2"
    t.string "thirdrow3"
    t.text "ourinfo"
    t.text "aboutme"
    t.string "phone_number1"
    t.string "phone_number2"
    t.string "logo_link"
    t.string "categori"
    t.string "categori2"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
