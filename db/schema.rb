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

ActiveRecord::Schema.define(version: 20190328125149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "faqs", force: :cascade do |t|
    t.string "title"
    t.text "question"
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "homepictures", force: :cascade do |t|
    t.string "section"
    t.string "hometext1"
    t.string "hometext2"
    t.string "hometext3"
    t.string "contactlocation"
    t.string "contactlocation1"
    t.string "contactlocation2"
    t.string "email"
    t.text "time"
    t.text "time1"
    t.string "number"
    t.string "city"
    t.string "city1"
    t.string "city2"
    t.string "locnumber1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locnumber"
    t.string "locnumber2"
    t.string "homeslider1_file_name"
    t.string "homeslider1_content_type"
    t.bigint "homeslider1_file_size"
    t.datetime "homeslider1_updated_at"
    t.string "homeslider2_file_name"
    t.string "homeslider2_content_type"
    t.bigint "homeslider2_file_size"
    t.datetime "homeslider2_updated_at"
    t.string "homeslider3_file_name"
    t.string "homeslider3_content_type"
    t.bigint "homeslider3_file_size"
    t.datetime "homeslider3_updated_at"
    t.string "about_file_name"
    t.string "about_content_type"
    t.bigint "about_file_size"
    t.datetime "about_updated_at"
    t.string "testimonial_file_name"
    t.string "testimonial_content_type"
    t.bigint "testimonial_file_size"
    t.datetime "testimonial_updated_at"
    t.string "pricing_file_name"
    t.string "pricing_content_type"
    t.bigint "pricing_file_size"
    t.datetime "pricing_updated_at"
    t.string "contact_file_name"
    t.string "contact_content_type"
    t.bigint "contact_file_size"
    t.datetime "contact_updated_at"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string "category"
    t.string "speciality"
    t.text "content"
    t.integer "price"
    t.string "duration"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.bigint "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.bigint "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.bigint "image3_file_size"
    t.datetime "image3_updated_at"
    t.string "image4_file_name"
    t.string "image4_content_type"
    t.bigint "image4_file_size"
    t.datetime "image4_updated_at"
    t.string "image5_file_name"
    t.string "image5_content_type"
    t.bigint "image5_file_size"
    t.datetime "image5_updated_at"
    t.string "image6_file_name"
    t.string "image6_content_type"
    t.bigint "image6_file_size"
    t.datetime "image6_updated_at"
    t.index ["slug"], name: "index_treatments_on_slug", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
