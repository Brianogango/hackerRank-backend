class AssessmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :duration
   has_many :assessment_katas
  has_many :katas, through: :assessment_katas
end
