class AddIdVehicleToRoutes < ActiveRecord::Migration[6.0]
  def change
    add_reference :routes, :vehicle, null: true, foreign_key: true
  end
end
