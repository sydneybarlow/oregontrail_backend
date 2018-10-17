class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.integer :user_id
      t.string :name
      t.integer :amount
      t.timestamps
    end
  end
end
