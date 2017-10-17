class ChangeTokentoString < ActiveRecord::Migration[5.0]
  def change
    change_column :teams, :team_token, :string
  end
end
