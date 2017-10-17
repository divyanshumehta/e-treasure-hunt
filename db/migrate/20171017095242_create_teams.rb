class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :team_token, null: false, default:1
      t.integer :last_checkpoint, null: false, default:0

      t.timestamps
    end
  end
end
