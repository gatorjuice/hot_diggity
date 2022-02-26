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

ActiveRecord::Schema[7.0].define(version: 2022_02_26_193818) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "excavation_sites", force: :cascade do |t|
    t.string "name", null: false
    t.string "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number"], name: "index_excavation_sites_on_number", unique: true
  end

  create_table "stp_forms", force: :cascade do |t|
    t.integer "excavation_site_id", null: false
    t.string "number", null: false
    t.string "grid_coordinates", default: "", null: false
    t.decimal "length", default: "0.0", null: false
    t.decimal "width", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number"], name: "index_stp_forms_on_number"
  end

  create_table "strats", force: :cascade do |t|
    t.string "name", null: false
    t.integer "stp_form_id", null: false
    t.decimal "min_depth", null: false
    t.decimal "max_depth", null: false
    t.text "soil_description", default: "", null: false
    t.text "artifact_description", default: "", null: false
    t.text "comments", default: "", null: false
    t.string "bag", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_stp_forms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stp_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "stp_form_id"], name: "index_user_stp_forms_on_user_id_and_stp_form_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
