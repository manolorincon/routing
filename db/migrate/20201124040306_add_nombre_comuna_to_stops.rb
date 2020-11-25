class AddNombreComunaToStops < ActiveRecord::Migration[6.0]
  def change
    add_column :stops, :comuna_nombre, :string
  end
end
