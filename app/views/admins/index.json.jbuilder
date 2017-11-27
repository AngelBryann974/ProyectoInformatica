json.array!(@admins) do |admin|
  json.extract! admin, :id, :nombre, :apellido_paterno, :apellido_materno, :direccion, :telefono
  json.url admin_url(admin, format: :json)
end
