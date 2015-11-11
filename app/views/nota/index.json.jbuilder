json.array!(@nota) do |notum|
  json.extract! notum, :id, :curso, :aluno, :professor, :data, :nota1, :nota2, :nota3
  json.url notum_url(notum, format: :json)
end
