class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status, :user_id
  has_one :assessment
  has_one :user

end
