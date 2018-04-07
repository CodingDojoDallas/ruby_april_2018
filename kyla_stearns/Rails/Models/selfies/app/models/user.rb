class User < ActiveRecord::Base
	# friends i have
	has_many :friends_of_mine, foreign_key: :friend_to_id, class_name: 'Friendship'
	has_many :friend_info, through: :friends_of_mine, source: :friend_of

	# friends with me
	has_many :friends_with_me, foreign_key: :friend_of_id, class_name: 'Friendship'
	has_many :friender_info, through: :friends_with_me, source: :friend_to
end
