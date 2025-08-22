class CreateEmprestimos < ActiveRecord::Migration[8.0]
  def change
    create_table :emprestimos do |t|
      t.references :pessoa, null: false, foreign_key: true
      t.references :livro, null: false, foreign_key: true
      t.date :data_inicio
      t.date :data_fim
      t.integer :status

      t.timestamps
    end
  end
end
