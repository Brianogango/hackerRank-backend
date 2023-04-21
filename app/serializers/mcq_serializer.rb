class McqSerializer < ActiveModel::Serializer
  attributes :id, :question_text
  has_one :assessment
end
