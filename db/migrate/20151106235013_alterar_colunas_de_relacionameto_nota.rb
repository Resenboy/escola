class AlterarColunasDeRelacionametoNota < ActiveRecord::Migration
  def up
  	rename_column :nota, :curso, :curso_id
  	rename_column :nota, :aluno, :aluno_id
	rename_column :nota, :professor, :professor_id

  	change_column :nota, :curso_id, :integer
  	change_column :nota, :aluno_id, :integer  
	change_column :nota, :professor_id, :integer

	add_foreign_key :nota, :cursos
	add_foreign_key :nota, :alunos
	add_foreign_key :nota, :professors

  end

  def down
  	remove_foreign_key :nota, :cursos
	remove_foreign_key :nota, :alunos
	remove_foreign_key :nota, :professors
  end

end
