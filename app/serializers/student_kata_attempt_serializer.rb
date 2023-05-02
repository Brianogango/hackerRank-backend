class StudentKataAttemptSerializer < ActiveModel::Serializer
  attributes :id, :grade, :code
  has_one :kata
  has_one :user
end
