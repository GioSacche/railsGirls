json.array!(@servicos) do |servico|
  json.extract! servico, :id, :Titulo, :Descricao, :Nome, :Status
  json.url servico_url(servico, format: :json)
end
