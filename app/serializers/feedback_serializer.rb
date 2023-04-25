class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :feedback_text
  has_one :user
  has_one :assessment
  has_one :student_kata_attempt
end
