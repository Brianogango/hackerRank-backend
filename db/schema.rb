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

ActiveRecord::Schema[7.0].define(version: 2023_04_27_125550) do
  create_table "answers", force: :cascade do |t|
    t.integer "mcq_id", null: false
    t.text "answer_text"
    t.boolean "is_correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mcq_id"], name: "index_answers_on_mcq_id"
  end

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
    t.integer "userId"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "assessment_id", null: false
    t.integer "student_kata_attempt_id", null: false
    t.text "feedback_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_feedbacks_on_assessment_id"
    t.index ["student_kata_attempt_id"], name: "index_feedbacks_on_student_kata_attempt_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "assessment_id", null: false
    t.integer "user_id", null: false
    t.string "status"
    t.string "note"
    t.string "email"
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_invitations_on_assessment_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "katas", force: :cascade do |t|
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
    t.json "tests"
    t.text "starter_code"
  end

  create_table "mcqs", force: :cascade do |t|
    t.integer "assessment_id", null: false
    t.text "question_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_mcqs_on_assessment_id"
  end

  create_table "student_assessments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "assessment_id", null: false
    t.float "overallgrade"
    t.integer "student_kata_attempt_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_student_assessments_on_assessment_id"
    t.index ["student_kata_attempt_id"], name: "index_student_assessments_on_student_kata_attempt_id"
    t.index ["user_id"], name: "index_student_assessments_on_user_id"
  end

  create_table "student_kata_attempts", force: :cascade do |t|
    t.integer "kata_id", null: false
    t.integer "user_id", null: false
    t.text "grade"
    t.text "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kata_id"], name: "index_student_kata_attempts_on_kata_id"
    t.index ["user_id"], name: "index_student_kata_attempts_on_user_id"
  end

  create_table "student_mcq_attempts", force: :cascade do |t|
    t.integer "student_assessment_id", null: false
    t.integer "mcq_id", null: false
    t.integer "answer_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_student_mcq_attempts_on_answer_id"
    t.index ["mcq_id"], name: "index_student_mcq_attempts_on_mcq_id"
    t.index ["student_assessment_id"], name: "index_student_mcq_attempts_on_student_assessment_id"
    t.index ["user_id"], name: "index_student_mcq_attempts_on_user_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "assessment_id"
    t.integer "kata_id"
    t.text "code"
    t.text "result"
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

  add_foreign_key "answers", "mcqs"
  add_foreign_key "assessment_kata", "assessments"
  add_foreign_key "assessment_kata", "katas"
  add_foreign_key "feedbacks", "assessments"
  add_foreign_key "feedbacks", "student_kata_attempts"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "invitations", "assessments"
  add_foreign_key "invitations", "users"
  add_foreign_key "mcqs", "assessments"
  add_foreign_key "student_assessments", "assessments"
  add_foreign_key "student_assessments", "student_kata_attempts"
  add_foreign_key "student_assessments", "users"
  add_foreign_key "student_kata_attempts", "kata", column: "kata_id"
  add_foreign_key "student_kata_attempts", "users"
  add_foreign_key "student_mcq_attempts", "answers"
  add_foreign_key "student_mcq_attempts", "mcqs"
  add_foreign_key "student_mcq_attempts", "student_assessments"
  add_foreign_key "student_mcq_attempts", "users"
end
