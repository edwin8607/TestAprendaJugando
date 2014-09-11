json.array!(@programas) do |programa|
  json.extract! programa, :id, :nombre_programa, :ficha_programa, :centro_id
  json.url programa_url(programa, format: :json)
end
