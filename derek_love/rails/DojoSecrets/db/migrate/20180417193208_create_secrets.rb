class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
