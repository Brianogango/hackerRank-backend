class CreateMcqs < ActiveRecord::Migration[7.0]
  def change
    create_table :mcqs do |t|
      t.references :assessment, null: false, foreign_key: true
      t.text :question_text

      t.timestamps
    end
  end
end
