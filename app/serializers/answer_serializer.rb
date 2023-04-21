class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :answer_text, :is_correct
  has_one :mcq
end
