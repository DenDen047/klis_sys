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

ActiveRecord::Schema.define(version: 20160612121358) do

  create_table "accepts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "accepts", ["created_at"], name: "index_accepts_on_created_at"
  add_index "accepts", ["report_id"], name: "index_accepts_on_report_id"
  add_index "accepts", ["user_id"], name: "index_accepts_on_user_id"

  create_table "bibliographies", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bibliographies", ["name"], name: "index_bibliographies_on_name"
  add_index "bibliographies", ["report_id"], name: "index_bibliographies_on_report_id"
  add_index "bibliographies", ["url"], name: "index_bibliographies_on_url"

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tweet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorites", ["created_at"], name: "index_favorites_on_created_at"
  add_index "favorites", ["tweet_id"], name: "index_favorites_on_tweet_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "follows", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "inverse_follower_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "follows", ["follower_id"], name: "index_follows_on_follower_id"
  add_index "follows", ["inverse_follower_id"], name: "index_follows_on_inverse_follower_id"

  create_table "reports", force: :cascade do |t|
    t.string   "name"
    t.date     "timelimit"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "reports", ["description"], name: "index_reports_on_description"
  add_index "reports", ["name"], name: "index_reports_on_name"
  add_index "reports", ["timelimit"], name: "index_reports_on_timelimit"

  create_table "tweets", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tweets", ["created_at"], name: "index_tweets_on_created_at"
  add_index "tweets", ["user_id"], name: "index_tweets_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "screen_name"
    t.string   "bio"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
