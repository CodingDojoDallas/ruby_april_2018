class Comment < ActiveRecord::Base
    validates :content, length: {in: 3..50}
    belongs_to :user
    belongs_to :event
end
