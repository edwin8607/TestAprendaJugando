json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :id, :nombres, :apellidos, :cedula, :sexo, :email, :ficha_id
  json.url estudiante_url(estudiante, format: :json)
end
