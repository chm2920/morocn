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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130603173847) do

  create_table "admins", :force => true do |t|
    t.string   "adminname"
    t.string   "password"
    t.string   "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "catalogs", :force => true do |t|
    t.string "name"
  end

  create_table "faqs", :force => true do |t|
    t.string "title"
    t.text   "text"
  end

  create_table "friendlinks", :force => true do |t|
    t.string  "title"
    t.string  "img_url"
    t.string  "link"
    t.integer "rank",    :default => 0
  end

  create_table "guestbooks", :force => true do |t|
    t.string   "area"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "intros", :force => true do |t|
    t.string "title"
    t.text   "content"
    t.string "en_title"
    t.text   "en_content"
  end

  create_table "kfs", :force => true do |t|
    t.string "stype"
    t.string "title"
    t.string "account"
  end

  create_table "kindeditor_assets", :force => true do |t|
    t.string   "asset"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "product_catalogs", :force => true do |t|
    t.string "name"
  end

  create_table "product_features", :force => true do |t|
    t.integer "product_id"
    t.string  "title"
    t.string  "img_url"
    t.string  "info"
  end

  create_table "product_files", :force => true do |t|
    t.integer  "product_id"
    t.string   "title"
    t.string   "data_type"
    t.string   "data_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "product_imgs", :force => true do |t|
    t.integer "product_id"
    t.string  "title"
    t.string  "addr"
  end

  create_table "products", :force => true do |t|
    t.integer  "product_catalog_id"
    t.string   "title"
    t.string   "cover"
    t.text     "specifications"
    t.string   "buy_url"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "run_logs", :force => true do |t|
    t.string   "log_path"
    t.string   "log_method"
    t.string   "log_params"
    t.string   "log_exception"
    t.string   "log_remote_ip"
    t.datetime "created_at"
  end

  create_table "sales", :force => true do |t|
    t.integer "city_id"
    t.string  "city"
    t.text    "info"
  end

  create_table "sys_settings", :force => true do |t|
    t.string "stype"
    t.text   "setting"
  end

  create_table "topics", :force => true do |t|
    t.integer  "catalog_id"
    t.string   "title"
    t.integer  "hits",        :default => 0
    t.string   "keywords"
    t.string   "description"
    t.text     "content"
    t.integer  "is_trash",    :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end
