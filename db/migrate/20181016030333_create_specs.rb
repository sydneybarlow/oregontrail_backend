class CreateSpecs < ActiveRecord::Migration[5.2]
  def change
    create_table :specs do |t|
      t.integer :user_id
      t.integer :family_member_id
      t.integer :supply_id

      t.timestamps
    end
  end
end
