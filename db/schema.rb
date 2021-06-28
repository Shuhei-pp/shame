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

ActiveRecord::Schema.define(version: 2021_06_22_064833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mailrecodes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "mail_form_id"
    t.string "teacher"
    t.string "lesson_name"
    t.string "lesson_term"
    t.string "lesson_number"
    t.string "lesson_schedule"
    t.string "reason"
    t.string "task"
    t.string "requirement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "faculty"
    t.string "program"
    t.integer "grade"
    t.string "student_number"
    t.integer "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
