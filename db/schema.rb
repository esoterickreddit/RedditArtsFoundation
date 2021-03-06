# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100526024649) do

  create_table "artworks", :force => true do |t|
    t.string   "title",                                     :default => "Untitled Artwork"
    t.string   "image_url",                                 :default => "/images/default.jpg"
    t.text     "description"
    t.boolean  "for_sale",                                  :default => false
    t.boolean  "nsfw",                                      :default => false
    t.decimal  "price",       :precision => 8, :scale => 2, :default => 0.0
    t.integer  "quantity"
    t.integer  "null"
    t.integer  "votes",                                     :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.float    "score"
  end

  add_index "artworks", ["score"], :name => "index_artworks_on_score"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_salt"
    t.string   "password_hash"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.date     "date_of_birth"
    t.boolean  "commission"
    t.boolean  "collaboration"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
