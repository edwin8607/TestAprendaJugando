class Regional < ActiveRecord::Base
	has_many :centros

	validates :departamento, uniqueness: {message: "Este departamento ya existe"}
end
