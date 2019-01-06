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

ActiveRecord::Schema.define(version: 2019_01_06_103125) do

  create_table "t1_logs", primary_key: "uuid", id: :string, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "company_guid"
    t.datetime "created_at", precision: 6
    t.datetime "event_at", precision: 6
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.json "documents"
    t.index ["company_guid"], name: "index_t1_logs_on_company_guid"
    t.index ["created_at"], name: "index_t1_logs_on_created_at"
    t.index ["event_at"], name: "index_t1_logs_on_event_at"
    t.index ["name1"], name: "index_t1_logs_on_name1"
    t.index ["name2"], name: "index_t1_logs_on_name2"
    t.index ["name3"], name: "index_t1_logs_on_name3"
  end

  create_table "t2_logs", primary_key: ["company_guid", "uuid"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8\n/*!50100 PARTITION BY KEY (company_guid)\nPARTITIONS 4 */", force: :cascade do |t|
    t.string "uuid", null: false
    t.string "company_guid", null: false
    t.datetime "created_at", precision: 6
    t.datetime "event_at", precision: 6
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.json "documents"
    t.index ["created_at"], name: "index_t2_logs_on_created_at"
    t.index ["event_at"], name: "index_t2_logs_on_event_at"
    t.index ["name1"], name: "index_t2_logs_on_name1"
    t.index ["name2"], name: "index_t2_logs_on_name2"
    t.index ["name3"], name: "index_t2_logs_on_name3"
  end

  create_table "t3_logs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "uuid"
    t.string "company_guid"
    t.datetime "created_at", precision: 6
    t.datetime "event_at", precision: 6
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.json "documents"
    t.index ["created_at"], name: "index_t3_logs_on_created_at"
    t.index ["event_at"], name: "index_t3_logs_on_event_at"
    t.index ["name1"], name: "index_t3_logs_on_name1"
    t.index ["name2"], name: "index_t3_logs_on_name2"
    t.index ["name3"], name: "index_t3_logs_on_name3"
  end

  create_table "t4_logs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "uuid"
    t.string "company_guid"
    t.datetime "created_at", precision: 6
    t.datetime "event_at", precision: 6
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.json "documents"
    t.index ["created_at"], name: "index_t4_logs_on_created_at"
    t.index ["event_at"], name: "index_t4_logs_on_event_at"
    t.index ["name1"], name: "index_t4_logs_on_name1"
    t.index ["name2"], name: "index_t4_logs_on_name2"
    t.index ["name3"], name: "index_t4_logs_on_name3"
  end

  create_table "t5_logs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "uuid"
    t.string "company_guid"
    t.datetime "created_at", precision: 6
    t.datetime "event_at", precision: 6
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.json "documents"
    t.index ["created_at"], name: "index_t5_logs_on_created_at"
    t.index ["event_at"], name: "index_t5_logs_on_event_at"
    t.index ["name1"], name: "index_t5_logs_on_name1"
    t.index ["name2"], name: "index_t5_logs_on_name2"
    t.index ["name3"], name: "index_t5_logs_on_name3"
  end

end
