class Assessment < ApplicationRecord
    has_many :assessment_katas
    has_many :katas, through: :assessment_katas
    has_many :invitations
end
