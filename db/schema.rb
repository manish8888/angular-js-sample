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

ActiveRecord::Schema.define(version: 20160220082720) do

  create_table "accounts", force: true do |t|
    t.integer  "supplier_id"
    t.string   "account_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["supplier_id"], name: "index_accounts_on_supplier_id", using: :btree

  create_table "appointments", force: true do |t|
    t.integer  "physician_id"
    t.integer  "patient_id"
    t.datetime "appointment_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
  add_index "appointments", ["physician_id"], name: "index_appointments_on_physician_id", using: :btree

  create_table "assemblies", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblies_parts", force: true do |t|
    t.integer "assembly_id"
    t.integer "part_id"
  end

  add_index "assemblies_parts", ["assembly_id"], name: "index_assemblies_parts_on_assembly_id", using: :btree
  add_index "assemblies_parts", ["part_id"], name: "index_assemblies_parts_on_part_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "comment_id"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.integer  "name"
    t.integer  "state_id"
    t.integer  "ward_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employes", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "salary"
    t.string  "state"
    t.string  "current_country"
    t.integer "category"
    t.string  "work_location"
  end

  create_table "emps", force: true do |t|
    t.string "name"
  end

  create_table "keywords", force: true do |t|
    t.string   "keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kites", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.datetime "order_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "parties", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
    t.string   "part_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "pictures", ["imageable_id", "imageable_type"], name: "index_pictures_on_imageable_id_and_imageable_type", using: :btree

  create_table "prdts", force: true do |t|
    t.string "name"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "comment_id"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "segments", force: true do |t|
    t.integer  "party_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string "name"
  end

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
