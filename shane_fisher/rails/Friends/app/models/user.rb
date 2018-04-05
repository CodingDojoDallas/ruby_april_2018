class User < ActiveRecord::Base
    has_many :friends, class_name: "User", foreign_key: "friender_id"
    belongs_to :friender, class_name: "User"
end
