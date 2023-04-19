class RenameKataToKatas < ActiveRecord::Migration[7.0]
  def change
     rename_table :kata, :katas
  end
end
