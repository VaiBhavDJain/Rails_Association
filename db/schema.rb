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

ActiveRecord::Schema.define(version: 2021_05_13_105930) do

  create_table "acco_histories", force: :cascade do |t|
    t.integer "acco_id"
    t.integer "credit_rating"
    t.index ["acco_id"], name: "index_acco_histories_on_acco_id"
  end

  create_table "accos", force: :cascade do |t|
    t.integer "supp_id"
    t.string "account_number"
    t.index ["supp_id"], name: "index_accos_on_supp_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.integer "supplier_id"
    t.string "account_number"
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "physician_id"
    t.integer "patient_id"
    t.datetime "appointment_date"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
  end

  create_table "books", force: :cascade do |t|
    t.string "book"
    t.integer "author_id"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "roll_no"
  end

  create_table "students_teachers", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "student_id", null: false
    t.index ["student_id"], name: "index_students_teachers_on_student_id"
    t.index ["teacher_id"], name: "index_students_teachers_on_teacher_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
  end

  create_table "supps", force: :cascade do |t|
    t.string "name"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "age"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "color"
    t.integer "price"
  end

  create_table "workers", force: :cascade do |t|
    t.integer "manager_id"
    t.index ["manager_id"], name: "index_workers_on_manager_id"
  end

  add_foreign_key "accounts", "suppliers"
  add_foreign_key "books", "authors"
  add_foreign_key "students_teachers", "students"
  add_foreign_key "students_teachers", "teachers"
  add_foreign_key "workers", "workers", column: "manager_id"
end
