class AssessmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :duration
  has_many :katas, through: :assessment_katas
  has_many :mcqs
  has_many :invitations
  
  
end
