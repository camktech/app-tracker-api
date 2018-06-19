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

ActiveRecord::Schema.define(version: 20180618203954) do

  create_table "application_skills", force: :cascade do |t|
    t.integer "application_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "experience"
    t.index ["application_id"], name: "index_application_skills_on_application_id"
    t.index ["skill_id"], name: "index_application_skills_on_skill_id"
  end

  create_table "applications", force: :cascade do |t|
    t.string "company_name"
    t.string "position"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "resume_id"
    t.integer "skills_match"
    t.index ["resume_id"], name: "index_applications_on_resume_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.string "interview_type"
    t.string "interviewer"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "application_id"
    t.integer "user_id"
    t.index ["application_id"], name: "index_interviews_on_application_id"
    t.index ["user_id"], name: "index_interviews_on_user_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "file_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer "user_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "experience"
    t.index ["skill_id"], name: "index_user_skills_on_skill_id"
    t.index ["user_id"], name: "index_user_skills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
