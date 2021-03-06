class User < ApplicationRecord
  has_many :event
  has_many :event_users
  has_many :event_messages
  has_many :communities

  has_secure_password

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: true
  validates :password, presence: true, length: { maximum: 50 }
end