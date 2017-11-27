json.array!(@videojuego_admins) do |videojuego_admin|
  json.extract! videojuego_admin, :id, :videojuego_id, :admin_id
  json.url videojuego_admin_url(videojuego_admin, format: :json)
end
