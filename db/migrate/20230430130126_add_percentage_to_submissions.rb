class AddPercentageToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :submissions, :percentage, :integer
  end
end
