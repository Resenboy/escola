class Curso < ActiveRecord::Base
	has_many :aluno
	has_many :professor
end
