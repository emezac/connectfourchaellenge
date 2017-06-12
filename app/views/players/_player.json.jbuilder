json.extract! player, :id, :user_name, :password_hash, :email, :created_at, :updated_at
json.url player_url(player, format: :json)
