class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :code, :result
  has_one :user
  has_one :assessment
  has_one :kata
end
