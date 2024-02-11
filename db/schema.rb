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

ActiveRecord::Schema[7.1].define(version: 2024_02_11_160839) do
  create_table "certification_campaigns", force: :cascade do |t|
    t.date "start_date"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certification_user_approvals", force: :cascade do |t|
    t.string "status"
    t.integer "certification_campaign_id", null: false
    t.integer "user_id", null: false
    t.integer "entitlements_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification_campaign_id"], name: "idx_on_certification_campaign_id_fbf51e74e2"
    t.index ["entitlements_id"], name: "index_certification_user_approvals_on_entitlements_id"
    t.index ["user_id"], name: "index_certification_user_approvals_on_user_id"
  end

  create_table "entitlements", force: :cascade do |t|
    t.string "role"
    t.string "status"
    t.integer "user_id", null: false
    t.integer "resource_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_entitlements_on_resource_id"
    t.index ["user_id"], name: "index_entitlements_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "certification_user_approvals", "certification_campaigns"
  add_foreign_key "certification_user_approvals", "entitlements", column: "entitlements_id"
  add_foreign_key "certification_user_approvals", "users"
  add_foreign_key "entitlements", "resources"
  add_foreign_key "entitlements", "users"
end
