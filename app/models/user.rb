class User < ActiveRecord::Base
  has_many :posts

  before_create -> { self.auth_token = SecureRandom.hex }
end
