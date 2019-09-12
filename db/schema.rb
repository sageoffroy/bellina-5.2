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

ActiveRecord::Schema.define(version: 2019_09_12_155615) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "hex_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.string "hex_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "footwears", force: :cascade do |t|
    t.string "sku"
    t.integer "trademark_id"
    t.integer "category_id"
    t.integer "color_id"
    t.integer "stock"
    t.integer "stock_warning"
    t.integer "wholesale_price"
    t.integer "retail_price"
    t.boolean "active"
    t.string "short_description"
    t.string "long_description"
    t.string "footwear_picture_uri"
    t.date "release_date"
    t.integer "release_country_id"
    t.integer "size_id"
    t.string "weight"
    t.integer "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_footwears_on_category_id"
    t.index ["color_id"], name: "index_footwears_on_color_id"
    t.index ["release_country_id"], name: "index_footwears_on_release_country_id"
    t.index ["season_id"], name: "index_footwears_on_season_id"
    t.index ["size_id"], name: "index_footwears_on_size_id"
    t.index ["trademark_id"], name: "index_footwears_on_trademark_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.integer "cuil"
    t.string "telephone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.decimal "number"
    t.decimal "us"
    t.decimal "cms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trademarks", force: :cascade do |t|
    t.string "name"
    t.string "hex_code"
    t.integer "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_trademarks_on_provider_id"
  end

end
