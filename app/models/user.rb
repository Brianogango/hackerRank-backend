class User < ApplicationRecord
    has_secure_password
    has_many :submissions
    validates :username,  presence: true
    validates :userType, inclusion: { in: %w[student TM], message: "must be either 'student' or 'TM'" }
    validates :password,  presence: true
    validates :email,presence:true, format: { with: URI::MailTo::EMAIL_REGEXP }

    has_many :invitations



end
