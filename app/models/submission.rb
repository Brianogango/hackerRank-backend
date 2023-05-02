class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :assessment
  belongs_to :kata

  validates :code, presence: true
end
