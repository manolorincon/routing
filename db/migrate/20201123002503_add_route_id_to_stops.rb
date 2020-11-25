class AddRouteIdToStops < ActiveRecord::Migration[6.0]
  def change
    add_reference :stops, :route, null: false, foreign_key: true
  end
end
