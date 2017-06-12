class AddCreatedToGamesPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :games_players, :created, :datetime
  end
end
