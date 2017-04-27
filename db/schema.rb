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

ActiveRecord::Schema.define(version: 20170427171511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.string   "body"
    t.integer  "jampost_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jampost_id"], name: "index_comments_on_jampost_id", using: :btree
  end

  create_table "instruments", force: :cascade do |t|
    t.string  "instrument"
    t.integer "jampost_id"
    t.index ["jampost_id"], name: "index_instruments_on_jampost_id", using: :btree
  end

  create_table "jamposts", force: :cascade do |t|
    t.string   "title"
    t.string   "img_url"
    t.string   "location"
    t.string   "body"
    t.boolean  "is_drumcircle"
    t.integer  "size_limit"
    t.integer  "skill_level"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "comments", "jamposts"
  add_foreign_key "instruments", "jamposts"
end
