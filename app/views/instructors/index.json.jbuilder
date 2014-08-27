json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :nombre, :apellido, :titulo, :centro_id
  json.url instructor_url(instructor, format: :json)
end
