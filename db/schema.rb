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

ActiveRecord::Schema.define(version: 20160303182302) do

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer  "standard_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sections", ["standard_id"], name: "index_sections_on_standard_id"

  create_table "standards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "section_id"
    t.integer  "house_id"
    t.string   "name"
    t.string   "gender"
    t.date     "dob"
    t.text     "address"
    t.string   "fathers_name"
    t.string   "blood_type"
    t.integer  "emergency_contact", limit: 10
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "students", ["house_id"], name: "index_students_on_house_id"
  add_index "students", ["section_id"], name: "index_students_on_section_id"

end