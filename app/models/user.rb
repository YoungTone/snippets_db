class User < ActiveRecord::Base
  has_secure_password
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, :password, length: { in: 6..10 }
end
