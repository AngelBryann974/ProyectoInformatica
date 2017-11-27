json.array!(@videojuegos) do |videojuego|
  json.extract! videojuego, :id, :nombre, :descripcion, :precio, :developer, :ESRB
  json.url videojuego_url(videojuego, format: :json)
end
