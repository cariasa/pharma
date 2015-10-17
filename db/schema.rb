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

ActiveRecord::Schema.define(version: 20151017202116) do

  create_table "People", force: :cascade do |t|
    t.string   "fullname"
    t.string   "address"
    t.string   "telephone"
    t.string   "email"
    t.date     "birthday"
    t.string   "idperson"
    t.integer  "city_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "specialty_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "clinic"
    t.string   "address"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinics_people", force: :cascade do |t|
    t.integer "clinic_id"
    t.integer "person_id"
  end

  create_table "persontypes", force: :cascade do |t|
    t.string   "persontype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
