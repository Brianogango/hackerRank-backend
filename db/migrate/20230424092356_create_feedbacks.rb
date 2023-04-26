class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :assessment, null: false, foreign_key: true
      t.references :student_kata_attempt, null: false, foreign_key: true
      t.text :feedback_text

      t.timestamps
    end
  end
end
