class User < ApplicationRecord
  has_many :articles
  VALID_EMAIL = /\A[^@\s]+@[^@\s]+\z/

  validates :username, presence: true, length: { minimum: 5, maximum: 20 }, uniqueness: { case_sensitive: false }
  
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum:105}, format: { with: VALID_EMAIL }
end
