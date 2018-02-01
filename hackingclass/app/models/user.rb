class User < ApplicationRecord
  has_one :course

  validates :username, presence: true,
                       length: { maximum: 50 },
                       uniqueness: true


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false } 
  validates :password, presence: true,
                       length: { minimum: 6 }

  validates :course_id, numericality: { only_integer: true }
end
