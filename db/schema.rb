# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140828152329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  add_index "categories", ["name"], name: "index_categories_on_name", unique: true, using: :btree

  create_table "locations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "locations", ["name"], name: "index_locations_on_name", unique: true, using: :btree

  create_table "pledges", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "reward_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pledges", ["reward_id"], name: "index_pledges_on_reward_id", using: :btree
  add_index "pledges", ["user_id"], name: "index_pledges_on_user_id", using: :btree

  create_table "projects", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.text     "blurb"
    t.integer  "location_id"
    t.datetime "end_date"
    t.float    "goal"
    t.text     "description"
    t.text     "challenges"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "projects", ["category_id"], name: "index_projects_on_category_id", using: :btree
  add_index "projects", ["location_id"], name: "index_projects_on_location_id", using: :btree
  add_index "projects", ["subcategory_id"], name: "index_projects_on_subcategory_id", using: :btree
  add_index "projects", ["title"], name: "index_projects_on_title", using: :btree
  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "rewards", force: true do |t|
    t.float    "pledge"
    t.text     "description"
    t.date     "delivery_date"
    t.integer  "shipping_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "rewards", ["project_id"], name: "index_rewards_on_project_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "password_digest",              null: false
    t.string   "session_token"
    t.string   "name"
    t.integer  "location_id"
    t.text     "biography"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile_picture_file_name"
    t.string   "profile_picture_content_type"
    t.integer  "profile_picture_file_size"
    t.datetime "profile_picture_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree

end
