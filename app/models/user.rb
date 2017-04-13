class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :username, presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :gender_cd, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  
  #uses simple_enu gemm
  as_enum :gender, :female => 1, :male => 0
  
  # Returns the hash digest of a given string
  def User.digest(string)
  	cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
  	BCrypt::Password.create(string, cost: cost)
  end
end
