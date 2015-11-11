class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :ra
      t.string :rg
      t.string :cpf
      t.string :email
      t.string :image

      t.timestamps null: false
    end
  end
end
