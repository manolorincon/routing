class AddComunaToStops < ActiveRecord::Migration[6.0]
  def change
    add_column :stops, :comuna, :string
  end
end
