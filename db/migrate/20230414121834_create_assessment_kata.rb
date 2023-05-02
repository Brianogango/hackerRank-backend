class CreateAssessmentKata < ActiveRecord::Migration[7.0]
  def change
    create_table :assessment_kata do |t|
      t.references :assessment, null: false, foreign_key: true
      t.references :kata, null: false, foreign_key: true

      t.timestamps
    end
  end
end
