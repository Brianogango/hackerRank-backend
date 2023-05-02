class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :mcq, null: false, foreign_key: true
      t.text :answer_text
      t.boolean :is_correct

      t.timestamps
    end
  end
end
