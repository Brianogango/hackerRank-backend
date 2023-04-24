class StudentKataAttempt < ApplicationRecord
  belongs_to :kata
  belongs_to :user
  has_many :feedbacks
end
