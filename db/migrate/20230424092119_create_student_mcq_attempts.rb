class CreateStudentMcqAttempts < ActiveRecord::Migration[7.0]
  def change
    create_table :student_mcq_attempts do |t|
      t.references :student_assessment, null: false, foreign_key: true
      t.references :mcq, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
