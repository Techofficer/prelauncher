# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_24_074729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", id: :serial, force: :cascade do |t|
    t.string "resource_id", null: false
    t.string "resource_type", null: false
    t.integer "author_id"
    t.string "author_type"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "namespace"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "ip_addresses", id: :serial, force: :cascade do |t|
    t.string "address"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prizes", force: :cascade do |t|
    t.string "name", null: false
    t.integer "number_of_referrals", default: 1, null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "facebook_message"
    t.string "twitter_message"
    t.text "email_message"
    t.string "email_subject"
    t.string "facebook_title"
    t.string "facebook_image_file_name"
    t.string "facebook_image_content_type"
    t.integer "facebook_image_file_size"
    t.datetime "facebook_image_updated_at"
    t.string "cover_image_file_name"
    t.string "cover_image_content_type"
    t.integer "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.string "additional_image_file_name"
    t.string "additional_image_content_type"
    t.integer "additional_image_file_size"
    t.datetime "additional_image_updated_at"
    t.string "status", default: "active"
    t.string "pinterest_image_file_name"
    t.string "pinterest_image_content_type"
    t.integer "pinterest_image_file_size"
    t.datetime "pinterest_image_updated_at"
    t.string "twitter_image_file_name"
    t.string "twitter_image_content_type"
    t.integer "twitter_image_file_size"
    t.datetime "twitter_image_updated_at"
    t.string "pinterest_description"
    t.string "linkedin_title"
    t.string "linkedin_message"
    t.string "google_plus_image_file_name"
    t.string "google_plus_image_content_type"
    t.integer "google_plus_image_file_size"
    t.datetime "google_plus_image_updated_at"
  end

  create_table "shares", force: :cascade do |t|
    t.integer "user_id"
    t.string "social_network"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shares_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "referral_code"
    t.integer "referrer_id"
    t.string "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ip_address"], name: "index_users_on_ip_address"
    t.index ["referrer_id"], name: "index_users_on_referrer_id"
  end

end
