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

ActiveRecord::Schema.define(version: 2019_05_10_191701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instructors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_instructors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_instructors_on_reset_password_token", unique: true
  end

  create_table "practical_exams", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.boolean "mandatory"
    t.integer "time_limit"
    t.date "date"
    t.datetime "start_time"
    t.datetime "stop_time"
    t.integer "student_id"
    t.integer "instructor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id", "instructor_id"], name: "index_practical_exams_on_student_id_and_instructor_id"
  end

  create_table "practical_skills", force: :cascade do |t|
    t.string "text", null: false
    t.boolean "critical"
    t.boolean "critical_passed"
    t.integer "points_possible"
    t.integer "points_earned"
    t.integer "practical_exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practical_exam_id"], name: "index_practical_skills_on_practical_exam_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
