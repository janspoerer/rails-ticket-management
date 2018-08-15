# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seed: Deleting existing records..."

Comment.delete_all
Ticket.delete_all
User.delete_all
Company.delete_all

puts "Seed: Seeding companies..."

Company.create!(
  name: "Siemens"
)

Company.create!(
  name: "Adidas"
)

Company.create!(
  name: "Bayer"
)

Company.create!(
  name: "BAFS"
)

puts "Seed: Seeding users..."

User.create!(
  email: hans.maier@siemens.com,
  first_name: "Hans",
  last_name: "Maier"
)



  create_table "users", force: :cascade do |t|
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
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.integer "minute_approval"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "ticket_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_comments_on_ticket_id"
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
    t.string "file", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end
