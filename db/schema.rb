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

ActiveRecord::Schema.define(version: 2018_09_02_101053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "ticket_id"
    t.text "content", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_comments_on_ticket_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", default: " "
    t.boolean "signup_flag", default: false
    t.boolean "billing_clearance_company", default: false
    t.boolean "billing_clearance_internal", default: true
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "iso_alpha_2_code"
    t.string "iso_alpha_3_code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "max_time", default: 60
    t.integer "actual_time"
    t.bigint "user_id"
    t.boolean "billed", default: false
    t.boolean "paid", default: false
    t.string "status", default: "open"
    t.string "type_of_issue", default: "not specified"
    t.boolean "satisfaction"
    t.string "title", default: "issue description not specified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.bigint "company_id"
    t.integer "minute_approval", default: 0
    t.boolean "time_restriction", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "useruploads", force: :cascade do |t|
    t.string "name"
    t.string "comment"
    t.string "datatype"
    t.integer "size"
    t.string "cloud_identifier"
    t.bigint "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_useruploads_on_ticket_id"
  end

  add_foreign_key "comments", "tickets"
  add_foreign_key "tickets", "users"
  add_foreign_key "users", "companies"
  add_foreign_key "useruploads", "tickets"
end
