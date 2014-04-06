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

ActiveRecord::Schema.define(version: 20140406122344) do

  create_table "lawyers", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "experience"
    t.string   "location"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_lists", force: true do |t|
    t.string   "code"
    t.string   "scode"
    t.string   "sname"
    t.integer  "charges"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_lists", ["code"], name: "index_service_lists_on_code"

  create_table "services", force: true do |t|
    t.string   "code"
    t.string   "scode"
    t.string   "sname"
    t.integer  "charges"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["code"], name: "index_services_on_code"

end
