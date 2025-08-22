class Livro < ApplicationRecord
  has_many :emprestimos, dependent: :destroy
end
