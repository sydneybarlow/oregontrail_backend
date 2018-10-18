class CreateFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :family_members do |t|
      t.integer :user_id
      t.string :role
      t.string :name
      t.string :health
      t.string :status
      t.timestamps
    end
  end
end
