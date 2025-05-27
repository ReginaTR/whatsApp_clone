# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_05_27_181737) do
  create_table "contacts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "from_id"
    t.integer "to_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_id"], name: "index_contacts_on_from_id"
    t.index ["to_id"], name: "index_contacts_on_to_id"
  end

  create_table "display_configurations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_display_configurations_on_user_id"
  end

  create_table "groups", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invitations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_invitations_on_group_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "message_deliveries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "message_id"
    t.integer "individual_receiver_id"
    t.integer "group_invitation_id"
    t.datetime "delivered_at"
    t.datetime "read_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sender_id"
    t.string "body"
    t.datetime "sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "mobile_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mobile_number"], name: "index_users_on_mobile_number"
  end

  add_foreign_key "display_configurations", "users"
  add_foreign_key "invitations", "groups"
  add_foreign_key "invitations", "users"
end
