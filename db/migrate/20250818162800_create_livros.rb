class CreateLivros < ActiveRecord::Migration[8.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :autor
      t.integer :ano_publicacao
      t.boolean :alugado

      t.timestamps
    end
  end
end
