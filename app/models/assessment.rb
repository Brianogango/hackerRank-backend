class Assessment < ApplicationRecord
  has_many :assessment_katas, dependent: :destroy
  has_many :katas, through: :assessment_katas
  has_many :mcqs
  has_many :invitations, dependent: :destroy
  has_many :submissions, dependent: :destroy
end
