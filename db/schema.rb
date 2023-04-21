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

ActiveRecord::Schema[7.0].define(version: 2023_04_21_033449) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "composers", force: :cascade do |t|
    t.string "name"
    t.integer "birth_year"
    t.integer "death_year"
    t.string "musical_era"
    t.integer "num_compositions"
    t.string "ethnicity"
    t.boolean "tonal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "maker"
    t.string "location"
    t.integer "year_opened"
    t.boolean "family_owned"
    t.string "ceo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pianos", force: :cascade do |t|
    t.string "model"
    t.string "style"
    t.integer "price"
    t.string "color"
    t.boolean "acoustic"
    t.bigint "manufacturer_id", null: false
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturer_id"], name: "index_pianos_on_manufacturer_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.integer "opus"
    t.integer "number"
    t.string "type_of_piece"
    t.string "nickname"
    t.integer "composition_date"
    t.boolean "multiple_instruments"
    t.string "main_instrument"
    t.string "key_signature"
    t.bigint "composer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["composer_id"], name: "index_pieces_on_composer_id"
  end

  add_foreign_key "pianos", "manufacturers"
  add_foreign_key "pieces", "composers"
end
