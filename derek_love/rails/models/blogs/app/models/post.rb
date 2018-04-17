class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages

  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }

  after_destroy :delete_messages

  private
    def delete_messages
      self.messages.destroy_all
    end
end
