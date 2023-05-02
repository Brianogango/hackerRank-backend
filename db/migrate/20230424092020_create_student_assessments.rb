class CreateStudentAssessments < ActiveRecord::Migration[7.0]
  def change
    create_table :student_assessments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :assessment, null: false, foreign_key: true
      t.float :overallgrade
      t.references :student_kata_attempt, null: false, foreign_key: true

      t.timestamps
    end
  end
end
