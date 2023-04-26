class StudentMcqAttemptSerializer < ActiveModel::Serializer
  attributes :id
  has_one :student_assessment
  has_one :mcq
  has_one :answer
  has_one :user
end
