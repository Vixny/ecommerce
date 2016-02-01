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

ActiveRecord::Schema.define(version: 20160201044538) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "dob"
    t.integer  "phone",                    limit: 8
    t.string   "dr_name"
    t.integer  "dr_phone",                 limit: 8
    t.integer  "dr_fax",                   limit: 8
    t.string   "shipping_address"
    t.string   "billing_address"
    t.string   "billing_info"
    t.string   "smoker"
    t.string   "drinker"
    t.text     "eye_disorders"
    t.text     "emotional_mood_disorders"
    t.string   "heart_disease"
    t.string   "high_lipids"
    t.text     "neurological_disorders"
    t.text     "kidney_disorders"
    t.text     "stomach_disorders"
    t.string   "diabetes"
    t.text     "other_disorders"
    t.text     "drug_alergies"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "doctors_name"
    t.string   "clinic_name"
    t.string   "clinic_address"
    t.string   "clinic_phone"
    t.string   "doctors_direct_phone"
    t.string   "fax_number"
    t.string   "email"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "doctors_offices", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "doctors_offices", ["email"], name: "index_doctors_offices_on_email", unique: true
  add_index "doctors_offices", ["reset_password_token"], name: "index_doctors_offices_on_reset_password_token", unique: true

  create_table "medications", force: :cascade do |t|
    t.string   "name"
    t.string   "generic_name"
    t.string   "int_name"
    t.boolean  "prescription_required",   default: false
    t.integer  "quantity"
    t.float    "price"
    t.string   "manufacturer"
    t.string   "origin"
    t.boolean  "is_pack_size_splittable", default: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
