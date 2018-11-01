class AddUserIdToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :user_id, :integer
  end
end
