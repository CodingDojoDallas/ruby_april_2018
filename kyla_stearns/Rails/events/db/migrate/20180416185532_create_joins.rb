class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.references :event, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
