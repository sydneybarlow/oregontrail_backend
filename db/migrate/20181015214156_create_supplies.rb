class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.string :type
      t.integer :amount
      t.timestamps
    end
  end
end
