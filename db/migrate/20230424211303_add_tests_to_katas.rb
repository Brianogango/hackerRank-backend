class AddTestsToKatas < ActiveRecord::Migration[7.0]
  def change
    add_column :katas, :tests, :json
  end
end
