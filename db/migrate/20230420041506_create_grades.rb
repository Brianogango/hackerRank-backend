class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.references :submission, null: false, foreign_key: true
      t.float :score

      t.timestamps
    end
  end
end
