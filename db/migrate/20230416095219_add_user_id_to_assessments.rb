class AddUserIdToAssessments < ActiveRecord::Migration[7.0]
  def change
    add_column :assessments, :userId, :integer
  end
end
