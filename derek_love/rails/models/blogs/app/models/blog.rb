class Blog < ActiveRecord::Base
    has_many :posts
    validates :name, :description, presence: true

    after_destroy :delete_posts

    private
        def delete_posts
            self.posts.destroy_all
        end
end
