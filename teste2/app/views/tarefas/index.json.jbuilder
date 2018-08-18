json.array!(@tarefas) do |tarefa|
  json.extract! tarefa, :id, :titulo, :descricao, :status
  json.url tarefa_url(tarefa, format: :json)
end
