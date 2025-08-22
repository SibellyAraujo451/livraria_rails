class Pessoa < ApplicationRecord
  has_many :emprestimos
has_many :livros, through: :emprestimos
end
