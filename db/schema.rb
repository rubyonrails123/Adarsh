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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151222064229) do

  create_table "clients", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "age"
    t.string   "companyname"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients_documents", id: false, force: true do |t|
    t.integer "client_id",   null: false
    t.integer "document_id", null: false
  end

  add_index "clients_documents", ["client_id", "document_id"], name: "index_clients_documents_on_client_id_and_document_id"
  add_index "clients_documents", ["document_id", "client_id"], name: "index_clients_documents_on_document_id_and_client_id"

  create_table "clients_teams", id: false, force: true do |t|
    t.integer "client_id", null: false
    t.integer "team_id",   null: false
  end

  create_table "documents", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "summary"
    t.string   "reference"
    t.string   "team_id"
    t.string   "conclusion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dafile"
    t.string   "file_path"
    t.string   "client_ids"
    t.string   "client_id"
  end

  create_table "documents_teams", id: false, force: true do |t|
    t.integer "document_id", null: false
    t.integer "team_id",     null: false
  end

  add_index "documents_teams", ["document_id", "team_id"], name: "index_documents_teams_on_document_id_and_team_id"
  add_index "documents_teams", ["team_id", "document_id"], name: "index_documents_teams_on_team_id_and_document_id"

  create_table "teams", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "age"
    t.string   "companyname"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "age"
    t.string   "user"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "priviligerole"
    t.boolean  "admin",         default: false
  end

end
