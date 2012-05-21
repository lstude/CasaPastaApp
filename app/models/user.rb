class User < ActiveRecord::Base
  attr_accessible :login, :email, :password, :password_confirmation
  
  has_secure_password
   
  before_save { |user| user.email = email.downcase }
  
  validates :login, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
 
end
# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  login           :string(255)
#  password_digest :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

