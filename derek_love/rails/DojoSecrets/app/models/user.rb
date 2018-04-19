class User < ActiveRecord::Base
  has_secure_password

  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret


  validates :first_name, presence: true
  validates :last_name, presence: true
  
  EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  validates :email, presence: true, uniqueness: { case_sensitive: false}, format: { with: EMAIL_REGEX }

  before_create :downcase

  private
    def downcase
      self.first_name.downcase!
      self.last_name.downcase!
      self.email.downcase!
    end
end
