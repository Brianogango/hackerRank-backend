class AssessmentKataSerializer < ActiveModel::Serializer
  attributes :id
  has_one :assessment
  has_one :kata
end
