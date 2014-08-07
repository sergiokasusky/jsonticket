json.array!(@equipos) do |equipo|
  json.extract! equipo, :id, :desc_corta, :serie, :marca, :modelo, :ram, :hd, :cliente_id
  json.url cliente_equipo_url(@cliente,equipo, format: :json)
end
