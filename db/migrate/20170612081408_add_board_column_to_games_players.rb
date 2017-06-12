class AddBoardColumnToGamesPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :games_players, :board_column, :integer
  end
end
