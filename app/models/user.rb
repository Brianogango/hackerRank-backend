class User < ApplicationRecord
    has_secure_password
    validates :username,  presence: true, uniqueness:true
    validates :userType, presence: true, inclusion: { in: ['TM', 'student'], case_sensitive: false }
    validates :password,  presence: true
    validates :email,presence:true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
