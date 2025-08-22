class CreatePessoas < ActiveRecord::Migration[8.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
