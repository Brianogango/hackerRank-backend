class StudentAssessment < ApplicationRecord
  belongs_to :user
  belongs_to :assessment
  belongs_to :student_kata_attempt
end
