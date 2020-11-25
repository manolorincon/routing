# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_24_235737) do

  create_table "comunas", force: :cascade do |t|
    t.string "comuna"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "telefono"
    t.integer "max_paradas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vehicle_id"
    t.index ["vehicle_id"], name: "index_drivers_on_vehicle_id"
  end

  create_table "routes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "route_start"
    t.datetime "route_end"
    t.integer "driver_id"
    t.integer "vehicle_id"
    t.index ["driver_id"], name: "index_routes_on_driver_id"
    t.index ["vehicle_id"], name: "index_routes_on_vehicle_id"
  end

  create_table "stops", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "route_id", null: false
    t.integer "charge"
    t.string "direccion"
    t.string "nombre_comuna"
    t.integer "tipo_carga"
    t.index ["route_id"], name: "index_stops_on_route_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "tipo_carga"
    t.integer "capacidad_carga"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "driver_id"
    t.index ["driver_id"], name: "index_vehicles_on_driver_id"
  end

  add_foreign_key "drivers", "vehicles"
  add_foreign_key "routes", "drivers"
  add_foreign_key "routes", "vehicles"
  add_foreign_key "stops", "routes"
  add_foreign_key "vehicles", "drivers"
end
