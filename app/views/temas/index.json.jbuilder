json.array!(@temas) do |tema|
  json.extract! tema, :id, :nombre_tema, :programa_id
  json.url tema_url(tema, format: :json)
end
