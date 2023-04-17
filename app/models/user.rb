class User < ApplicationRecord
    has_secure_password
    has_many :invites
    validates :username,  presence: true
    validates :userType, presence: true
    validates :password,  presence: true

    validates :email,presence:true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
