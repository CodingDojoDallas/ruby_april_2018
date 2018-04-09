class Like < ActiveRecord::Base
  belongs_to :friender, foreign_key: "friender_id", class_name: "User"
  belongs_to :friend, foreign_key: "friend_id", class_name: "User"
  
end
