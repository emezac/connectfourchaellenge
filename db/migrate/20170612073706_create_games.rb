class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :first_player
      t.integer :second_player
      t.datetime :created
      t.string :game_status
      t.string :game_type
      t.string :first_player_piece_code

      t.timestamps
    end
  end
end
