class User < ApplicationRecord
    has_secure_password
    validates :username,  presence: true
    validates :userType, inclusion: { in: %w[student TM], message: "must be either 'student' or 'TM'" }
    validates :password,  presence: true
    has_many :submissions

    validates :email,presence:true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
