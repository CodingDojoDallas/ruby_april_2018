class User < ActiveRecord::Base
    # All the users I am friends with
    has_many :friendships, foreign_key: :user_id, class_name: "Friend"
    has_many :friends, through: :friendships, source: :friend
end