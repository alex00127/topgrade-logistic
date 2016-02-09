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

ActiveRecord::Schema.define(version: 20160208083224) do

  create_table "charges", force: :cascade do |t|
    t.string   "city"
    t.string   "area"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.string   "shipper"
    t.string   "shipper_add"
    t.string   "shipper_tel"
    t.datetime "shipping_time"
    t.string   "shipping_status"
    t.string   "carrier"
    t.integer  "weight"
    t.integer  "volume"
    t.string   "ton_name"
    t.integer  "ton_id"
    t.integer  "stops_count"
    t.integer  "amount"
    t.integer  "task_id"
    t.text     "remark"
    t.string   "status"
    t.string   "payment_status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "orders", ["task_id"], name: "index_orders_on_task_id"
  add_index "orders", ["ton_id"], name: "index_orders_on_ton_id"

  create_table "stops", force: :cascade do |t|
    t.string   "consignee"
    t.string   "consignee_add"
    t.string   "consignee_tel"
    t.integer  "order_id"
    t.string   "item"
    t.integer  "qty"
    t.integer  "charge_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "stops", ["charge_id"], name: "index_stops_on_charge_id"
  add_index "stops", ["order_id"], name: "index_stops_on_order_id"

  create_table "tasks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "amount"
    t.string   "status"
    t.integer  "stops_count"
    t.integer  "orders_count"
    t.string   "priority"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

  create_table "tons", force: :cascade do |t|
    t.string   "name"
    t.float    "price_ratio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
