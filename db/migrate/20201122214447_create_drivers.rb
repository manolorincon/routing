class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.integer :max_paradas

      t.timestamps
    end
  end
end
