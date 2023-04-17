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

ActiveRecord::Schema[7.0].define(version: 2023_04_17_093524) do
  create_table "assessment_kata", force: :cascade do |t|
    t.integer "assessment_id", null: false
    t.integer "kata_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_assessment_kata_on_assessment_id"
    t.index ["kata_id"], name: "index_assessment_kata_on_kata_id"
  end

  create_table "assessments", force: :cascade do |t|
    t.string "title"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "assessment_id", null: false
    t.integer "user_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_invitations_on_assessment_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "kata", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "url"
    t.string "category"
    t.string "description"
    t.string "tags"
    t.string "languages"
    t.json "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "userType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assessment_kata", "assessments"
  add_foreign_key "assessment_kata", "kata", column: "kata_id"
  add_foreign_key "invitations", "assessments"
  add_foreign_key "invitations", "users"
end
