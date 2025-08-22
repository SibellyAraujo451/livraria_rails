json.extract! emprestimo, :id, :pessoa_id, :livro_id, :data_inicio, :data_fim, :status, :created_at, :updated_at
json.url emprestimo_url(emprestimo, format: :json)
