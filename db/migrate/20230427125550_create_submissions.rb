class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.integer :user_id
      t.integer :assessment_id
      t.integer :kata_id
      t.text :code
      t.text :result

      t.timestamps
    end
  end
end
