class Post < ActiveRecord::Base
  def wipe
    self.messages.destroy_all
    self.destroy
  end

  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
  
  has_many :messages
  belongs_to :blog

  


end
