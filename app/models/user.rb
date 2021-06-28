class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :faculty, presence: true
  validates :password, presence: true, length: {minimum: 5}
end
