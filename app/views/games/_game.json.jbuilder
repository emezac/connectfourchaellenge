json.extract! game, :id, :first_player, :second_player, :created, :game_status, :game_type, :first_player_piece_code, :created_at, :updated_at
json.url game_url(game, format: :json)
