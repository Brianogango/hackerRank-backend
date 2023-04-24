class Kata < ApplicationRecord
    self.table_name = "katas"
    has_many :assessment_katas
    has_many :assessments, through: :assessment_katas
end
