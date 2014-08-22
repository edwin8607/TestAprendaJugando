json.array!(@regionals) do |regional|
  json.extract! regional, :id, :departamento
  json.url regional_url(regional, format: :json)
end
