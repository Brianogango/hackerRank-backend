class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status, :note, :email, :end_date
  has_one :assessment
  has_one :user
end
