class StudentMcqAttempt < ApplicationRecord
  belongs_to :student_assessment
  belongs_to :mcq
  belongs_to :answer
  belongs_to :user
end
