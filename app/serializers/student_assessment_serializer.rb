class StudentAssessmentSerializer < ActiveModel::Serializer
  attributes :id, :overallgrade
  has_one :user
  has_one :assessment
  has_one :student_kata_attempt
end
