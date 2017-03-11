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

ActiveRecord::Schema.define(version: 20170306201158) do

  create_table "drug_stores", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.time     "hour_open_regular"
    t.time     "hour_close_regular"
    t.string   "days_regular"
    t.time     "hour_open_other"
    t.time     "hour_close_other"
    t.string   "days_other"
    t.string   "payment_options"
    t.integer  "delivery_radius"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "name"
    t.string   "active_ingredient"
    t.text     "description"
    t.string   "metric"
    t.integer  "dosage"
    t.string   "brand"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "drug_id"
    t.integer  "drug_store_id"
    t.integer  "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["drug_id"], name: "index_prices_on_drug_id"
    t.index ["drug_store_id"], name: "index_prices_on_drug_store_id"
  end

end
