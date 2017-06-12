class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Players, :Games do |t|
      # t.index [:player_id, :game_id]
      # t.index [:game_id, :player_id]
    end
  end
end
