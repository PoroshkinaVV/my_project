# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160508120355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string   "name",        null: false
    t.date     "start_date",  null: false
    t.date     "end_date",    null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "collections", ["name", "start_date", "end_date"], name: "index_collections_on_name_and_start_date_and_end_date", unique: true, using: :btree

  create_table "showpieces", force: :cascade do |t|
    t.string   "name",                                null: false
    t.integer  "creation_century",    default: 0,     null: false
    t.text     "description"
    t.float    "insurance",           default: 0.0,   null: false
    t.float    "height",              default: 0.0,   null: false
    t.float    "width",               default: 0.0,   null: false
    t.float    "length",              default: 0.0,   null: false
    t.boolean  "temperature_control", default: false, null: false
    t.boolean  "wet_control",         default: false, null: false
    t.boolean  "people_protection",   default: false, null: false
    t.integer  "collection_id",                       null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "showpieces", ["collection_id"], name: "index_showpieces_on_collection_id", using: :btree
  add_index "showpieces", ["name", "collection_id"], name: "index_showpieces_on_name_and_collection_id", unique: true, using: :btree

  create_table "showroom_collections", force: :cascade do |t|
    t.integer  "showroom_id",   null: false
    t.integer  "collection_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "showroom_collections", ["collection_id"], name: "index_showroom_collections_on_collection_id", using: :btree
  add_index "showroom_collections", ["showroom_id", "collection_id"], name: "index_showroom_collections_on_showroom_id_and_collection_id", unique: true, using: :btree
  add_index "showroom_collections", ["showroom_id"], name: "index_showroom_collections_on_showroom_id", using: :btree

  create_table "showrooms", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "showrooms", ["name"], name: "index_showrooms_on_name", unique: true, using: :btree

  create_table "ticketprice_collections", force: :cascade do |t|
    t.integer  "ticketprice_id", null: false
    t.integer  "collection_id",  null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "ticketprice_collections", ["collection_id"], name: "index_ticketprice_collections_on_collection_id", using: :btree
  add_index "ticketprice_collections", ["ticketprice_id"], name: "index_ticketprice_collections_on_ticketprice_id", using: :btree

  create_table "ticketprices", force: :cascade do |t|
    t.string   "visitor_type", default: "взрослый", null: false
    t.float    "price",        default: 0.0,        null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_foreign_key "showpieces", "collections"
  add_foreign_key "showroom_collections", "collections"
  add_foreign_key "showroom_collections", "showrooms"
  add_foreign_key "ticketprice_collections", "collections"
  add_foreign_key "ticketprice_collections", "ticketprices"
end
