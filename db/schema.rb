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

ActiveRecord::Schema.define(version: 20170109173324) do

  create_table "bills", force: :cascade do |t|
    t.string   "bill_name",   limit: 255
    t.string   "stage",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.date     "prop_date"
    t.text     "summary",     limit: 65535
    t.string   "bill_number", limit: 255
  end

  create_table "bps", force: :cascade do |t|
    t.text     "bp",         limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "bill_id",    limit: 4
  end

  add_index "bps", ["bill_id"], name: "index_bps_on_bill_id", using: :btree

  create_table "committees", force: :cascade do |t|
    t.string   "committee",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "bill_id",    limit: 4
  end

  add_index "committees", ["bill_id"], name: "index_committees_on_bill_id", using: :btree

  create_table "congress_people", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.string   "first_name",         limit: 255
    t.string   "last_name",          limit: 255
    t.string   "party",              limit: 255
    t.text     "bio",                limit: 65535
    t.string   "state",              limit: 255
    t.string   "position",           limit: 255
    t.date     "dob"
    t.integer  "district",           limit: 4
    t.string   "birth_place",        limit: 255
    t.string   "current_city",       limit: 255
  end

  create_table "cosponsors", force: :cascade do |t|
    t.string   "cosponsor",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "bill_id",    limit: 4
  end

  add_index "cosponsors", ["bill_id"], name: "index_cosponsors_on_bill_id", using: :btree

  create_table "sponsors", force: :cascade do |t|
    t.string   "sponsor",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "bill_id",    limit: 4
  end

  add_index "sponsors", ["bill_id"], name: "index_sponsors_on_bill_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
