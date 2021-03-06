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

ActiveRecord::Schema.define(version: 2020_10_06_075227) do

  create_table "feeds", force: :cascade do |t|
    t.string "title", null: false
    t.string "language"
    t.datetime "published_date"
    t.string "generator"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "feed_id", null: false
    t.string "title", null: false
    t.string "description"
    t.datetime "published_date"
    t.string "link"
    t.integer "episode"
    t.string "keywords"
    t.float "duration"
    t.string "link_to_audio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feed_id"], name: "index_items_on_feed_id"
  end

end
