class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :friend, index: true, foreign_key: true
      t.references :friender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
