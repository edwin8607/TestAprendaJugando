json.array!(@centroprogramas) do |centroprograma|
  json.extract! centroprograma, :id, :centro_id, :programa_id
  json.url centroprograma_url(centroprograma, format: :json)
end
