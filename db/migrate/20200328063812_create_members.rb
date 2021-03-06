class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :user_id, index: true, foreign_key: true, null: false
      t.integer :group_id, index: true, foreign_key: true, null: false
      t.integer :flag, null: false

      t.timestamps
    end
  end
end
