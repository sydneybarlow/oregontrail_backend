class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :family_member_id
      t.string :supply_id
      t.timestamps
    end
  end
end
