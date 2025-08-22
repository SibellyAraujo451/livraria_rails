json.extract! pessoa, :id, :nome, :email, :telefone, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
