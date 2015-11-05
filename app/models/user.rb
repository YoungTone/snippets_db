class User < ActiveRecord::Base
  has_secure_password
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, :password, length: { in: 6..10 }

  has_many :snippets
  # has_many :favorites, dependent: :destroy
end
