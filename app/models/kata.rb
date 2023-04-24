class Kata < ApplicationRecord
    has_many :assessment_katas
    has_many :assessments, through: :assessment_katas
    
     
end
