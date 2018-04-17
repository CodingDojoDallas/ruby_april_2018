class Friend < ActiveRecord::Base
  belongs_to :user, required: true, foreign_key: "user_id", class_name: "User"
  belongs_to :friend, required: true, foreign_key: "friend_id", class_name: "User"
end
