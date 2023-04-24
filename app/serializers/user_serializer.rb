class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :userType

  has_many :invitations
  has_many :student_assessments
end
