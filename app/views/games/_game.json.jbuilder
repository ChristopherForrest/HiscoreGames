json.extract! game, :id, :title, :description, :genre, :category, :price, :sold, :created_at, :updated_at
json.url game_url(game, format: :json)
