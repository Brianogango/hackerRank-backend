class CreateStudentKataAttempts < ActiveRecord::Migration[7.0]
  def change
    create_table :student_kata_attempts do |t|
      t.references :kata, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :grade
      t.text :code

      t.timestamps
    end
  end
end
