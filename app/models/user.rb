class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :username, presence: true, length: { minimum: 5, maximum: 128 }
  validates :password, format: /\A((?=.*\d{2,})(?=.*[a-z]{2,})(?=.*[A-Z]{2,})(?=.*[[:^alnum:]]{2,})){10,128}/x
end
