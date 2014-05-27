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

ActiveRecord::Schema.define(version: 20140502204848) do

  create_table "stocks", force: true do |t|
    t.integer  "stock_id"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "cost"
    t.text     "price_type"
    t.integer  "quantity_on_hand"
    t.text     "modifier_1_name"
    t.decimal  "modifier_1_price"
    t.text     "modifier_2_name"
    t.decimal  "modifier_2_price"
    t.text     "modifier_3_name"
    t.decimal  "modifier_3_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
