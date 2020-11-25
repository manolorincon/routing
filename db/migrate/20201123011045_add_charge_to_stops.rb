class AddChargeToStops < ActiveRecord::Migration[6.0]
  def change
    add_column :stops, :charge, :integer
  end
end
