class AddDireccionToStops < ActiveRecord::Migration[6.0]
  def change
    add_column :stops, :direccion, :string
  end
end
