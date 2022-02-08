class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :username, presence: true, length: { minimum: 5, maximum: 128 }
  validates :password, :format => {with: /\A(?=.{10,128})(?=.*\d{2,})(?=.*[a-z]{2,})(?=.*[A-Z]{2,})(?=.*[[:^alnum:]]{2,})/x}
end
