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

ActiveRecord::Schema[7.0].define(version: 2023_06_15_030851) do
  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "genre_id", null: false
    t.string "cover_image"
    t.text "brief_description"
    t.float "rating"
    t.text "detailed_description"
    t.date "publish_date"
    t.string "publisher"
    t.string "isbn_number"
    t.integer "reviews_id", null: false
    t.integer "submitted_by_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_books_on_genre_id"
    t.index ["reviews_id"], name: "index_books_on_reviews_id"
    t.index ["submitted_by_id"], name: "index_books_on_submitted_by_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "commenter_id", null: false
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commenter_id"], name: "index_comments_on_commenter_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "reviewer_id", null: false
    t.text "body"
    t.integer "comments_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comments_id"], name: "index_reviews_on_comments_id"
    t.index ["reviewer_id"], name: "index_reviews_on_reviewer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "books", "genres"
  add_foreign_key "books", "reviews", column: "reviews_id"
  add_foreign_key "books", "submitted_bies"
  add_foreign_key "comments", "commenters"
  add_foreign_key "reviews", "comments", column: "comments_id"
  add_foreign_key "reviews", "reviewers"
end
