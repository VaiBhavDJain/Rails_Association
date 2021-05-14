class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :name
      t.string :color
      t.integer :price
    end
  end
end
