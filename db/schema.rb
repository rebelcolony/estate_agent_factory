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

ActiveRecord::Schema.define(:version => 20090605111800) do

  create_table "houses", :force => true do |t|
    t.string   "title"
    t.text     "teaser"
    t.integer  "price"
    t.text     "description"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "maidsrooms"
    t.integer  "floor_area"
    t.integer  "lot_area"
    t.string   "payment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
    t.integer  "term_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "location"
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms", :force => true do |t|
    t.string   "terms"
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
