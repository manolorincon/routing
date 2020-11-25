class CreateComunas < ActiveRecord::Migration[6.0]
  def change
    create_table :comunas do |t|
      t.string :comuna
      t.string :region

      t.timestamps
    end
  end
end
