class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :assessment, null: false, foreign_key: true
      t.references :kata, null: false, foreign_key: true
      t.text :code
      t.text :result

      t.timestamps
    end
  end
end
