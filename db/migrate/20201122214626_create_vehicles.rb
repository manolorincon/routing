class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.integer :tipo_carga
      t.integer :capacidad_carga

      t.timestamps
    end
  end
end
