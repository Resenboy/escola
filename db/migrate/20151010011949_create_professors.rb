class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :registro
      t.string :disciplina

      t.timestamps null: false
    end
  end
end
