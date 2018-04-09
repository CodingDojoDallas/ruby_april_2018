class User < ActiveRecord::Base

    has_many :friends, through: :friends_a, source: :friender
    has_many :friends_a, foreign_key: :friend_id, class_name: "Like"

    has_many :frienders, through: :frienders_a, source: :friend
    has_many :frienders_a, foreign_key: :friender_id, class_name: "Like"


    
end
