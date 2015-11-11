class Notum < ActiveRecord::Base
	belongs_to :curso
	belongs_to :aluno
	belongs_to :professor
	
end
