class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.string :curso
      t.string :aluno
      t.string :professor
      t.string :data
      t.string :nota1
      t.string :nota2
      t.string :nota3

      t.timestamps null: false
    end
  end
end
