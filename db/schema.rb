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

ActiveRecord::Schema.define(version: 20180408202449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "portada_file_name"
    t.string "portada_content_type"
    t.integer "portada_file_size"
    t.datetime "portada_updated_at"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "picture_file_file_name"
    t.string "picture_file_content_type"
    t.integer "picture_file_file_size"
    t.datetime "picture_file_updated_at"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_pictures_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.string "weight"
    t.string "capacity"
    t.string "aasm_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "subcategory_id"
    t.integer "total_heigth"
    t.integer "total_large"
    t.integer "larger_diameter"
    t.integer "smaller_diameter"
    t.integer "hatch_diameter"
    t.text "applications"
    t.string "materials"
    t.integer "total_width"
    t.boolean "featured_product"
    t.boolean "product_offer"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["subcategory_id"], name: "index_products_on_subcategory_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "subject"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
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
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pictures", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "subcategories"
  add_foreign_key "subcategories", "categories"
end
