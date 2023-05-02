class Mcq < ApplicationRecord
  belongs_to :assessment
  has_many :answers
  
end
