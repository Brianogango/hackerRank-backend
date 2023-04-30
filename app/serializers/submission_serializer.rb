class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :assessment_id, :kata_id, :code, :result
    belongs_to :user
  belongs_to :assessment
  belongs_to :kata
end