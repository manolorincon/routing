class AddIdDriverToRoutes < ActiveRecord::Migration[6.0]
  def change
    add_reference :routes, :driver, null: true, foreign_key: true
  end
end
