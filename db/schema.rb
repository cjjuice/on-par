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

ActiveRecord::Schema.define(:version => 20121111163719) do

  create_table "invites", :force => true do |t|
    t.boolean  "accept"
    t.boolean  "sup_bro"
    t.integer  "player_id"
    t.integer  "match_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "invites", ["match_id"], :name => "index_invites_on_match_id"
  add_index "invites", ["player_id"], :name => "index_invites_on_player_id"

  create_table "matches", :force => true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "venue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "sport_id"
  end

  add_index "matches", ["sport_id"], :name => "index_matches_on_sport_id"
  add_index "matches", ["venue_id"], :name => "index_matches_on_venue_id"

  create_table "palendars", :force => true do |t|
    t.integer  "day"
    t.integer  "start_time"
    t.integer  "end_time"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "palendars", ["player_id"], :name => "index_palendars_on_player_id"

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.datetime "dob"
    t.string   "gender"
    t.string   "facebook_id"
    t.float    "lat"
    t.float    "lng"
    t.integer  "radius"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sports", :force => true do |t|
    t.string   "name"
    t.integer  "num_of_players"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "valendars", :force => true do |t|
    t.integer  "day"
    t.integer  "start_time"
    t.integer  "end_time"
    t.integer  "venue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "valendars", ["venue_id"], :name => "index_valendars_on_venue_id"

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "lat"
    t.float    "lng"
    t.integer  "price"
    t.string   "website"
    t.string   "pic_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
