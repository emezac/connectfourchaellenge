class CreateMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :moves do |t|
      t.references :player, foreign_key: true
      t.references :game, foreign_key: true
      t.string :board_row
      t.string :board_column
      t.string :boardmatrix

      t.timestamps
    end
  end
end
