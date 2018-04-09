class Friendship < ActiveRecord::Base
  belongs_to :friend_to, required: true, foreign_key: 'friend_to_id', class_name: 'User'
  belongs_to :friend_of, required: true, foreign_key: 'friend_of_id', class_name: 'User'
end
