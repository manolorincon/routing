class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|

      t.timestamps
    end
  end
end