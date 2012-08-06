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

ActiveRecord::Schema.define(:version => 20120801094031) do

  create_table "credentials", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.string   "login"
    t.string   "password"
    t.string   "server_type"
    t.boolean  "in_use",      :default => false, :null => false
    t.boolean  "default",     :default => false, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "results", :force => true do |t|
    t.string   "name"
    t.string   "filetype"
    t.integer  "depth"
    t.integer  "run_id"
    t.string   "filepath"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "runs", :force => true do |t|
    t.string   "run_identification"
    t.string   "state"
    t.datetime "creation"
    t.datetime "start"
    t.datetime "end"
    t.datetime "expiry"
    t.integer  "workflow_id"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "tavernaservs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.boolean  "admin",         :default => false, :null => false
  end

  create_table "workflows", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.string   "author"
    t.string   "workflow_file"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end