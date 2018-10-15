class CreateFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :family_members do |t|
      t.string :name
      t.string :health
      t.string :status
      t.timestamps
    end
  end
end
