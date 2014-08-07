json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :email, :password, :telefono, :direccion
  json.url cliente_url(cliente, format: :json)
end
