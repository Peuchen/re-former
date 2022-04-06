class User < ApplicationRecord
  validates :username, :email, :password, presence: true

  validates :username, :email, uniqueness: true

  validates :username, length: { in: 4..20 }
  validates :password, length: { minimum: 8 }
end