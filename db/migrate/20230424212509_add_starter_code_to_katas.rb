class AddStarterCodeToKatas < ActiveRecord::Migration[7.0]
  def change
    add_column :katas, :starter_code, :text
  end
end
