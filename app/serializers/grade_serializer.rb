class GradeSerializer < ActiveModel::Serializer
  attributes :id, :score
  has_one :submission
end
