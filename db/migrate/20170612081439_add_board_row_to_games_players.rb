class AddBoardRowToGamesPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :games_players, :board_row, :integer
  end
end
