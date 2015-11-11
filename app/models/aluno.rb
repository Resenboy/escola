class Aluno < ActiveRecord::Base

	belongs_to :curso
	validates :nome, :email, presence: true
		validates :ra, length: {minimum: 6}

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "85x70#" },
	:default_url => 'default.png'

	scope :por_nome, ->(nome) {
		where("nome LIKE ?", "%#{nome}%")
	}

end
