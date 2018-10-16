class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.integer :money
      t.integer :poundsOfFood
      t.integer :boxesOfAmmo
      t.timestamps
    end
  end
end
