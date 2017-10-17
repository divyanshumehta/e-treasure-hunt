class CreateClues < ActiveRecord::Migration[5.0]
  def change
    create_table :clues do |t|
      t.integer :checkpoint, null: false
      t.string :pass, null: false
      t.text :clue_text, null: false

      t.timestamps
    end
  end
end
