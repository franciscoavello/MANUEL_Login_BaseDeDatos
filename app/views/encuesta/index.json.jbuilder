json.array!(@encuesta) do |encuestum|
  json.extract! encuestum, :id, :Encuesta_id, :Encuesta_estado, :Encuesta_nombre, :Encuesta_descripcion
  json.url encuestum_url(encuestum, format: :json)
end
