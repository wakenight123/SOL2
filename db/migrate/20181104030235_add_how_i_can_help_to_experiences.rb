class AddHowICanHelpToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :how_i_can_help, :string
    add_column :experiences, :rate, :integer
  end
end
