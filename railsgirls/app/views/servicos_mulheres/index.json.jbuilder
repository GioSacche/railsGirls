json.array!(@servicos_mulheres) do |servicos_mulhere|
  json.extract! servicos_mulhere, :id, :Titulo, :Descricao, :Nome, :Status
  json.url servicos_mulhere_url(servicos_mulhere, format: :json)
end
