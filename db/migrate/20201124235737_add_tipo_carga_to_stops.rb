class AddTipoCargaToStops < ActiveRecord::Migration[6.0]
  def change
    add_column :stops, :tipo_carga, :integer
  end
end
