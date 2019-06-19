class User < ApplicationRecord
  before_save { email.downcase! }

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                    uniqueness: {case_sensitive: false}, 
                    format: { with: VALID_EMAIL_REGEX }

  has_secure_password
  validates :password, presence: true

  has_many :appointments

end
