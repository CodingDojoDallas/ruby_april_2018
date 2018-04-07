class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :friend_to, index: true, foreign_key: true
      t.references :friend_of, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
