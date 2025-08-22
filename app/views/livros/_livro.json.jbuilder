json.extract! livro, :id, :titulo, :autor, :ano_publicacao, :alugado, :created_at, :updated_at
json.url livro_url(livro, format: :json)
