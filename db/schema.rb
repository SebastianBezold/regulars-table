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

ActiveRecord::Schema.define(version: 20150520181001) do

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "event_id"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "comments", ["employee_id"], name: "index_comments_on_employee_id"
  add_index "comments", ["event_id"], name: "index_comments_on_event_id"

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees_teams", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "team_id",     null: false
  end

  add_index "employees_teams", ["employee_id", "team_id"], name: "index_employees_teams_on_employee_id_and_team_id"
  add_index "employees_teams", ["team_id", "employee_id"], name: "index_employees_teams_on_team_id_and_employee_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "location"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["employee_id"], name: "index_events_on_employee_id"

  create_table "invitations", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "event_id"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
