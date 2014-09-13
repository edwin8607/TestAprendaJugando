json.array!(@fichas) do |ficha|
  json.extract! ficha, :id, :numeroficha, :programa_id
  json.url ficha_url(ficha, format: :json)
end
