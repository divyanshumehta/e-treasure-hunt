class AddScoreToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :score, :integer
  end
end
