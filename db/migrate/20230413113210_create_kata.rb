class CreateKata < ActiveRecord::Migration[7.0]
  def change
    create_table :katas do |t|
      t.string :name
      t.string :slug
      t.string :url
      t.string :category
      t.string :description
      t.string :tags
      t.string :languages
      t.json :rank

      t.timestamps
    end
  end
end
