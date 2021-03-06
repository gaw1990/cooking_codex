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

ActiveRecord::Schema.define(version: 20171212180102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cooks", primary_key: "cook_id", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
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
    t.index ["email"], name: "index_cooks_on_email", unique: true
    t.index ["reset_password_token"], name: "index_cooks_on_reset_password_token", unique: true
  end

  create_table "directions", primary_key: "direction_id", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "step_number"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_directions_on_recipe_id"
  end

  create_table "ingredients", primary_key: "ingredient_id", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_categories", primary_key: "recipe_category_id", force: :cascade do |t|
    t.string "name"
  end

  create_table "recipe_ingredients", primary_key: "recipe_ingredient_id", force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "recipe_id", null: false
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", primary_key: "recipe_id", force: :cascade do |t|
    t.string "title", null: false
    t.text "summary"
    t.string "yield"
    t.string "prep_time"
    t.string "cooking_time"
    t.integer "recipe_category_id"
    t.integer "cook_id"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cook_id"], name: "index_recipes_on_cook_id"
    t.index ["recipe_category_id"], name: "index_recipes_on_recipe_category_id"
  end

end
