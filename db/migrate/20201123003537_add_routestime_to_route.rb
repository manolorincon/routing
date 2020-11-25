class AddRoutestimeToRoute < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :route_start, :datetime
    add_column :routes, :route_end, :datetime
  end
end
