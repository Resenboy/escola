json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :ra, :rg, :cpf, :email, :image
  json.url aluno_url(aluno, format: :json)
end
